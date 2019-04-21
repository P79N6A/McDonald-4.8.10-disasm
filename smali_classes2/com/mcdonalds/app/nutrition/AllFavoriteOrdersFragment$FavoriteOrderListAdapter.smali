.class Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AllFavoriteOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteOrderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;)V
    .locals 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 103
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 105
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v1}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->access$102(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;I)I

    .line 106
    invoke-virtual {p1}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;
    .param p2, "x1"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;-><init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.AllFavoriteOrdersFragment$FavoriteOrderListAdapter"

    const-string v2, "access$300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->startSingleReceiptActivity(Lcom/mcdonalds/sdk/modules/models/Order;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;ILcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.AllFavoriteOrdersFragment$FavoriteOrderListAdapter"

    const-string v2, "access$400"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->orderAgain(ILcom/mcdonalds/sdk/modules/models/Order;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.AllFavoriteOrdersFragment$FavoriteOrderListAdapter"

    const-string v2, "access$500"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->clearBasketAndAddNewProducts(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/Order;)V

    return-void
.end method

.method private clearBasketAndAddNewProducts(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 4
    .param p1, "favoriteOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p2, "currentOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const-string v1, "clearBasketAndAddNewProducts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 261
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->clearProducts()V

    .line 263
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 264
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p2, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_0

    .line 266
    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 267
    return-void
.end method

.method private orderAgain(ILcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 9
    .param p1, "orderPosition"    # I
    .param p2, "favoriteOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const-string v3, "orderAgain"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Order Again"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 207
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getBasketCounter()I

    move-result v3

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getMaxBasketQuantity()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 208
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    .line 209
    invoke-virtual {v4}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0907e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    .line 210
    invoke-virtual {v4}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0905d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$4;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$4;-><init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;)V

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 219
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    const-string v4, "Too many products in the basket"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/modules/models/Order;->canAddProducts(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 222
    invoke-static {p2}, Lcom/mcdonalds/app/ordering/OrderUtils;->orderHasUnavailableProductsOrIsEmpty(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    const v5, 0x7f090a51

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4, v7}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 225
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    const-string v4, "Must have items in basket before checking out"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 228
    .local v2, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_1

    .line 230
    .end local v2    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 231
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/mcdonalds/app/ui/URLActionBarActivity;

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/ui/URLActionBarActivity;

    const-class v4, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-virtual {v3, v4, v8}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->startActivityForResult(Ljava/lang/Class;I)V

    goto :goto_0

    .line 238
    :cond_4
    new-instance v1, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$5;

    invoke-direct {v1, p0, p2, v0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$5;-><init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 245
    .local v1, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f09010f

    .line 246
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f090156

    .line 247
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    const v5, 0x7f090182

    .line 248
    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    const v5, 0x7f09011a

    .line 249
    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 251
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 254
    .end local v1    # "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_5
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->showInvalidDayPartsError(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private startSingleReceiptActivity(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 5
    .param p1, "favoriteOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const-string v2, "startSingleReceiptActivity"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 187
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "order_data_passer_key"

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-class v2, Lcom/mcdonalds/app/nutrition/SingleReceiptActivity;

    sget-object v3, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 196
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->access$200(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->access$200(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItemId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040101

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 130
    new-instance v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;-><init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;)V

    .line 131
    .local v2, "viewHolder":Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;
    const v3, 0x7f110355

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;->mOrderAgainBtn:Landroid/widget/Button;

    .line 132
    const v3, 0x7f110352

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;->mReceiptLayout:Landroid/widget/LinearLayout;

    .line 135
    iget-object v3, v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;->mReceiptLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    .local v1, "vi_params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->access$100(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;)I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 138
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 140
    iget-object v3, v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;->mReceiptLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const v3, 0x7f11037a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;->mZigzagView:Landroid/view/View;

    .line 142
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    .end local v1    # "vi_params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    const-class v3, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;

    invoke-static {p2, v3, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Order;

    .line 149
    .local v0, "favoriteOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    iget-object v3, v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;->mReceiptLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 151
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;->mReceiptLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, v3, v4, v5}, Lcom/mcdonalds/app/ordering/menu/OrderReceiptRecents;->configureOrderReceiptForDisplay(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)V

    .line 155
    new-instance v3, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$1;-><init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v3, v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;->mOrderAgainBtn:Landroid/widget/Button;

    new-instance v4, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$2;

    invoke-direct {v4, p0, p1, v0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$2;-><init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;ILcom/mcdonalds/sdk/modules/models/Order;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v3, v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;->mReceiptLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$3;

    invoke-direct {v4, p0, v0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$3;-><init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v3, "getView"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 144
    .end local v0    # "favoriteOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v2    # "viewHolder":Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;

    .restart local v2    # "viewHolder":Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$ReceiptViewHolder;
    goto :goto_0
.end method
