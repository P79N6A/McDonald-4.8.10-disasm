.class public Lcom/mcdonalds/app/offers/OfferActivity;
.super Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;
.source "OfferActivity.java"


# instance fields
.field protected mABTitle:Landroid/widget/TextView;

.field private mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

.field private mOfferListener:Lcom/mcdonalds/app/offers/OffersListener;

.field private mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

.field private mSelectedOfferRecipes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/offers/OfferActivity;Lcom/mcdonalds/sdk/modules/models/Offer;)Lcom/mcdonalds/sdk/modules/models/Offer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferActivity;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferActivity"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/offers/OfferActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferActivity"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->showOfferFragment()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/offers/OfferActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferActivity"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->showOfferIdError()V

    return-void
.end method

.method private setOfferFromId(Ljava/lang/String;)V
    .locals 9
    .param p1, "offerIdString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "setOfferFromId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 82
    .local v6, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 87
    .local v7, "offerId":Ljava/lang/Integer;
    if-nez v7, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->showOfferIdError()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "userName":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v8

    .line 96
    .local v8, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v8, :cond_0

    .line 97
    const v0, 0x7f09080f

    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 98
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/mcdonalds/app/offers/OfferActivity$1;

    invoke-direct {v5, p0, v7}, Lcom/mcdonalds/app/offers/OfferActivity$1;-><init>(Lcom/mcdonalds/app/offers/OfferActivity;Ljava/lang/Integer;)V

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private showOfferFragment()V
    .locals 3

    .prologue
    const-string v1, "showOfferFragment"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    new-instance v1, Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-direct {v1}, Lcom/mcdonalds/app/offers/OfferFragment;-><init>()V

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/offers/OfferActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 129
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getContainerResource()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 132
    return-void
.end method

.method private showOfferFragment(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    const-string v1, "showOfferFragment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance v1, Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-direct {v1}, Lcom/mcdonalds/app/offers/OfferFragment;-><init>()V

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/offers/OfferActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 136
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 138
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getContainerResource()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 139
    return-void
.end method

.method private showOfferIdError()V
    .locals 3

    .prologue
    const-string v0, "showOfferIdError"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905af

    .line 144
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/offers/OfferActivity$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/offers/OfferActivity$2;-><init>(Lcom/mcdonalds/app/offers/OfferActivity;)V

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public getABTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "getABTitle"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    :cond_0
    return-object v0
.end method

.method public getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;
    .locals 2

    .prologue
    const-string v0, "getOffer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    return-object v0
.end method

.method public getSelectedOfferProduct(I)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 4
    .param p1, "key"    # I

    .prologue
    const-string v0, "getSelectedOfferProduct"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mSelectedOfferRecipes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Product;

    return-object v0
.end method

.method public hasSelectedOfferProduct(I)Z
    .locals 5
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "hasSelectedOfferProduct"

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mSelectedOfferRecipes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected navigateToBasket()V
    .locals 3

    .prologue
    const-string v1, "navigateToBasket"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/offers/OfferFragment;

    .line 176
    .local v0, "fragment":Lcom/mcdonalds/app/offers/OfferFragment;
    invoke-virtual {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->basketWillBeDisplayed()V

    .line 178
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->navigateToBasket()V

    .line 179
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 205
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/offers/OfferFragment;

    .line 207
    .local v2, "fragment":Lcom/mcdonalds/app/offers/OfferFragment;
    sparse-switch p1, :sswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 209
    :sswitch_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 212
    .local v1, "extraData":Landroid/os/Bundle;
    const-string v7, "offer_key"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 214
    .local v4, "offerKey":I
    const-string v7, "selected_recipe_key"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 215
    const-string v7, "selected_recipe_key"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 219
    .local v6, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_1
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mOfferListener:Lcom/mcdonalds/app/offers/OffersListener;

    invoke-interface {v7, v4, v6}, Lcom/mcdonalds/app/offers/OffersListener;->onOfferProductSelected(ILcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 217
    .end local v6    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v7

    const-string v8, "selected_recipe_key"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v6    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_1

    .line 230
    .end local v1    # "extraData":Landroid/os/Bundle;
    .end local v4    # "offerKey":I
    .end local v6    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :sswitch_1
    if-ne p2, v7, :cond_0

    .line 231
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 233
    .restart local v1    # "extraData":Landroid/os/Bundle;
    sget-object v7, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 234
    sget-object v7, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 238
    .restart local v6    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_2
    sget-object v7, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT_INDEX:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 240
    .local v5, "position":I
    invoke-virtual {v2, v6, v5}, Lcom/mcdonalds/app/offers/OfferFragment;->productCustomizationsUpdated(Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    goto :goto_0

    .line 236
    .end local v5    # "position":I
    .end local v6    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v7

    sget-object v8, Lcom/mcdonalds/app/ordering/ProductCustomizationFragment;->RESULT_PRODUCT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v6    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_2

    .line 245
    .end local v1    # "extraData":Landroid/os/Bundle;
    .end local v6    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :sswitch_2
    if-ne p2, v7, :cond_0

    .line 246
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 248
    .restart local v1    # "extraData":Landroid/os/Bundle;
    const-string v7, "RESULT_PRODUCT"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 249
    const-string v7, "RESULT_PRODUCT"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 253
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_3
    const-string v7, "RESULT_INDEX"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 254
    .local v3, "index":I
    const-string v7, "RESULT_POSITION"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 255
    .restart local v5    # "position":I
    invoke-virtual {v2, v0, v3, v5}, Lcom/mcdonalds/app/offers/OfferFragment;->productChoiceSelected(Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)V

    goto/16 :goto_0

    .line 251
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "index":I
    .end local v5    # "position":I
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v7

    const-string v8, "RESULT_PRODUCT"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .restart local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_3

    .line 260
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "extraData":Landroid/os/Bundle;
    :sswitch_3
    if-ne p2, v7, :cond_0

    .line 261
    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/offers/OfferActivity;->setResult(I)V

    goto/16 :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x2f3a -> :sswitch_0
        0x332a -> :sswitch_2
        0x9520 -> :sswitch_3
        0xb128 -> :sswitch_1
    .end sparse-switch

    .line 209
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_title"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "titleId":I
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mSelectedOfferRecipes:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/offers/OfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mABTitle:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_offer"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_offer"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Offer;

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "IN_EDIT_MODE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 71
    .local v0, "inEditMode":Z
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->showOfferFragment()V

    .line 77
    :goto_1
    return-void

    .line 67
    .end local v0    # "inEditMode":Z
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    const-string v3, "extra_offer"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Offer;

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    goto :goto_0

    .line 74
    .restart local v0    # "inEditMode":Z
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_offer"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/offers/OfferActivity;->setOfferFromId(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/offers/OfferActivity;->showOfferFragment(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public setOnOfferSelectedListener(Lcom/mcdonalds/app/offers/OffersListener;)V
    .locals 3
    .param p1, "offerListener"    # Lcom/mcdonalds/app/offers/OffersListener;

    .prologue
    const-string v0, "setOnOfferSelectedListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mOfferListener:Lcom/mcdonalds/app/offers/OffersListener;

    .line 270
    return-void
.end method

.method public setOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 3
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const-string v0, "setOrderOffer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferActivity;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 274
    return-void
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public showOfferProductSelection(ILcom/mcdonalds/sdk/modules/models/OfferProduct;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "orderOfferProduct"    # Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .prologue
    const-string v1, "showOfferProductSelection"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "offer_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v1

    const-string v2, "offer_product_key"

    invoke-virtual {v1, v2, p2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    const-class v1, Lcom/mcdonalds/app/offers/OfferProductActivity;

    const-string v2, "offerproductfragment"

    const/16 v3, 0x2f3a

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mcdonalds/app/offers/OfferActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 200
    return-void
.end method
