.class public Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "FavoriteOrderUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$FavouriteOrderUpdateListener;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private favoritedOrderButton:Landroid/widget/Button;

.field private isFavorited:Z

.field private listener:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$FavouriteOrderUpdateListener;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private orderReceiptContainer:Landroid/widget/LinearLayout;

.field private rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->orderAgain()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->isFavorited:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->isFavorited:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;Ljava/lang/String;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$200"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->addToFavorites(Ljava/lang/String;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->removeFavorited()V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->setButtonFavored()V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$FavouriteOrderUpdateListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->listener:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$FavouriteOrderUpdateListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoriteOrderUpdateFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->setButtonFavoriteRemoved()V

    return-void
.end method

.method private addToFavorites(Ljava/lang/String;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V
    .locals 6
    .param p1, "favoriteName"    # Ljava/lang/String;
    .param p2, "favoriteInputViewHolder"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .prologue
    const/4 v4, 0x0

    const-string v0, "addToFavorites"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v5, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;

    invoke-direct {v5, p0, p2, p1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$3;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Ljava/lang/String;)V

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 228
    return-void
.end method

.method private init(Landroid/view/LayoutInflater;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const-string v0, "init"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 110
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->orderReceiptContainer:Landroid/widget/LinearLayout;

    .line 109
    invoke-static {v0, v1, v2, p1}, Lcom/mcdonalds/app/ordering/menu/OrderReceiptRecents;->configureOrderReceiptForDisplay(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)V

    .line 114
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->setUpAddToFavoritesButton(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method private orderAgain()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "orderAgain"

    invoke-static {p0, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Order Again"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 267
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getBasketCounter()I

    move-result v2

    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getMaxBasketQuantity()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 269
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 270
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0905d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$5;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$5;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->canAddProducts(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/OrderUtils;->orderHasUnavailableProductsOrIsEmpty(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090a51

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 283
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "Must have items in basket before checking out"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 286
    .local v1, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_1

    .line 290
    .end local v1    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils;->showInvalidDayPartsError(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private removeFavorited()V
    .locals 5

    .prologue
    const-string v2, "removeFavorited"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->setButtonFavoriteRemoveOperationProcessing()V

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;-><init>()V

    .line 236
    .local v0, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getFavoriteId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->setFavoriteId(Ljava/lang/Integer;)V

    .line 238
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$4;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->deleteFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 259
    return-void
.end method

.method private setButtonFavored()V
    .locals 3

    .prologue
    const-string v0, "setButtonFavored"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 176
    return-void
.end method

.method private setButtonFavoriteRemoveOperationProcessing()V
    .locals 3

    .prologue
    const-string v0, "setButtonFavoriteRemoveOperationProcessing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 181
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 183
    return-void
.end method

.method private setButtonFavoriteRemoved()V
    .locals 3

    .prologue
    const-string v0, "setButtonFavoriteRemoved"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090359

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 188
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 190
    return-void
.end method

.method private setUpAddToFavoritesButton(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const-string v0, "setUpAddToFavoritesButton"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->isFavorited:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->setButtonFavored()V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    new-instance v1, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->setButtonFavoriteRemoved()V

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const v0, 0x7f090878

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ORDER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ORDER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Order;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 77
    :goto_0
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->isFavorited:Z

    .line 81
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v0

    const-string v1, "ORDER"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Order;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const v2, 0x7f0400f0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->rootView:Landroid/view/View;

    .line 87
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->rootView:Landroid/view/View;

    const v3, 0x7f110355

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 89
    .local v0, "orderAgainBtn":Landroid/widget/Button;
    new-instance v2, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$1;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->rootView:Landroid/view/View;

    const v3, 0x7f110356

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->favoritedOrderButton:Landroid/widget/Button;

    .line 97
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->rootView:Landroid/view/View;

    const v3, 0x7f110352

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->orderReceiptContainer:Landroid/widget/LinearLayout;

    .line 99
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->init(Landroid/view/LayoutInflater;)V

    .line 101
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->rootView:Landroid/view/View;

    const v3, 0x7f110067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    .local v1, "title":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getFavoriteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->rootView:Landroid/view/View;

    return-object v2
.end method
