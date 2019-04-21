.class public Lcom/mcdonalds/app/ordering/menu/MenuActivity;
.super Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;
.source "MenuActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;,
        Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;,
        Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;
    }
.end annotation


# static fields
.field public static final ENDPOINTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isCatalogSync:Z

.field private mAllTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mCatalogListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;",
            ">;"
        }
    .end annotation
.end field

.field mCatalogObserver:Landroid/database/ContentObserver;

.field mCatalogSyncErrorAlert:Landroid/support/v7/app/AlertDialog;

.field mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDayPartPager:Landroid/support/v4/view/ViewPager;

.field private mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

.field private mFavoritesTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mFirstLoadProducts:Z

.field private mFoodSearchEditorListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mLastKnownPOD:Ljava/lang/String;

.field mMenuGridFragment:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

.field private mOnDayPartChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPodChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mSearchBar:Landroid/widget/EditText;

.field private mSearchButton:Landroid/view/View;

.field private mSearchContainer:Landroid/view/View;

.field private mSkipFirstLoadAddressWorkflow:Z

.field private mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field mStoreObserver:Landroid/database/ContentObserver;

.field private mStoreTitle:Landroid/widget/TextView;

.field private mTabs:Landroid/support/design/widget/TabLayout;

.field private mWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "start_order"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "start_order_delivery"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "recents_grid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favorites_grid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "menu_grid"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->ENDPOINTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mOnDayPartChangeListeners:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mOnPodChangeListeners:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogListeners:Ljava/util/List;

    .line 117
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$1;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mFoodSearchEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->isCatalogSync:Z

    .line 248
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$5;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogObserver:Landroid/database/ContentObserver;

    .line 804
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$18;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$18;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/menu/MenuActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuActivity"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->trackFoodPageSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/menu/MenuActivity;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuActivity"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->checkCatalogStatus(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuActivity"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->requestSyncReload()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuActivity"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mAllTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/menu/MenuActivity;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuActivity"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getTabNameResId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuActivity"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->showSearchBar()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuActivity"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->hideSearchBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuActivity"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setStore()V

    return-void
.end method

.method private checkCatalogStatus(Z)V
    .locals 6
    .param p1, "shouldNotifyCatalog"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "checkCatalogStatus"

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->hasCatalogDownloaded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->hasMarketCatalogDownloaded(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 270
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getSyncStatus()I

    move-result v0

    .line 271
    .local v0, "syncStatus":I
    if-nez v0, :cond_2

    .line 272
    const-string v1, "updating_catalog"

    const v2, 0x7f090662

    invoke-static {p0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;I)V

    .line 273
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setCatalogSync(Z)V

    .line 297
    .end local v0    # "syncStatus":I
    :cond_1
    :goto_0
    return-void

    .line 274
    .restart local v0    # "syncStatus":I
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->showCatalogSyncErrorAlert()V

    goto :goto_0

    .line 277
    :cond_3
    const-string v1, "catUpdate"

    const-string v2, "requestSync"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->requestSync()V

    goto :goto_0

    .line 283
    .end local v0    # "syncStatus":I
    :cond_4
    const-string v1, "updating_catalog"

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    if-eqz v1, :cond_5

    .line 286
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->refresh()V

    .line 289
    :cond_5
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogSyncErrorAlert:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_6

    .line 290
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogSyncErrorAlert:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 291
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setCatalogSync(Z)V

    .line 293
    :cond_6
    if-eqz p1, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->notifyCatalogReady()V

    goto :goto_0
.end method

.method private getCurrentPod()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "getCurrentPod"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const-string v0, "Delivery"

    .line 587
    .local v0, "pod":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 585
    .end local v0    # "pod":Ljava/lang/String;
    :cond_0
    const-string v0, "Pickup"

    .restart local v0    # "pod":Ljava/lang/String;
    goto :goto_0
.end method

.method private getTabNameResId(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getTabNameResId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 711
    packed-switch p1, :pswitch_data_0

    .line 715
    const v0, 0x7f0907a7

    :goto_0
    return v0

    .line 713
    :pswitch_0
    const v0, 0x7f09056a

    goto :goto_0

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private goToFragment(Ljava/lang/String;)V
    .locals 9
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const v8, 0x7f090889

    const-wide/16 v6, 0x1f4

    const-string v3, "goToFragment"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p0, v3, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 379
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 380
    .local v1, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 500
    :cond_1
    :goto_1
    return-void

    .line 380
    :sswitch_0
    const-string v4, "recents_grid"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v2, "favorites_grid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "menu_grid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "start_order"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "start_order_delivery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    .line 382
    :pswitch_0
    const v2, 0x7f09089c

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackScreenLoad(Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mRecentsTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_1

    .line 386
    :pswitch_1
    const v2, 0x7f090878

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackScreenLoad(Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mFavoritesTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 388
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/MenuActivity$9;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$9;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 400
    :pswitch_2
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackScreenLoad(Ljava/lang/String;)V

    .line 422
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/MenuActivity$10;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$10;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 435
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackScreenLoad(Ljava/lang/String;)V

    .line 437
    const-string v2, "catUpdate"

    const-string v3, "start_order"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 440
    .local v0, "currStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 441
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/MenuActivity$11;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$11;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 451
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mAllTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_3

    .line 452
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mAllTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 454
    :cond_3
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-nez v2, :cond_4

    .line 455
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->checkIfCatalogFail()V

    goto/16 :goto_1

    .line 458
    :cond_4
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/MenuActivity$12;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$12;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 474
    .end local v0    # "currStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :pswitch_4
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackScreenLoad(Ljava/lang/String;)V

    .line 476
    const-string v2, "catUpdate"

    const-string v3, "start_order_delivery"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mAllTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_5

    .line 479
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mAllTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 481
    :cond_5
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 482
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->checkIfCatalogFail()V

    goto/16 :goto_1

    .line 485
    :cond_6
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/MenuActivity$13;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$13;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 380
    :sswitch_data_0
    .sparse-switch
        -0x78869653 -> :sswitch_0
        -0x5b07a2cf -> :sswitch_3
        -0x5b064dda -> :sswitch_2
        -0x33a447d2 -> :sswitch_1
        0x18a93742 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private goToReceivedFragment(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "goToReceivedFragment"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 370
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v2, "fragment"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "screen":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->goToFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hideSearchBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "hideSearchBar"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 761
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 763
    return-void
.end method

.method private notifyCatalogReady()V
    .locals 3

    .prologue
    const-string v1, "notifyCatalogReady"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;

    .line 301
    .local v0, "catalogListener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;
    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;->onCatalogReady()V

    goto :goto_0

    .line 303
    .end local v0    # "catalogListener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;
    :cond_0
    return-void
.end method

.method private requestSync()V
    .locals 2

    .prologue
    const-string v0, "requestSync"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    const-string v0, "updating_catalog"

    const v1, 0x7f090662

    invoke-static {p0, v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;I)V

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setCatalogSync(Z)V

    .line 336
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->reloadCatalog(Landroid/content/Context;)V

    .line 337
    return-void
.end method

.method private requestSyncReload()V
    .locals 3

    .prologue
    const-string v1, "requestSyncReload"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    const v1, 0x7f090662

    invoke-static {p0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 341
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setCatalogSync(Z)V

    .line 342
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$8;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$8;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    .line 347
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 348
    return-void
.end method

.method private setAsapDeliveryDate(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;
    .locals 7
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v3, "setAsapDeliveryDate"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    const v3, 0x7f0902ed

    new-array v4, v5, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "time":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 911
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNowInStoreLocalTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    .line 912
    .local v1, "nowInStoreTime":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getExpectedDeliveryTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 915
    .local v0, "edtInStoreTime":Ljava/util/Date;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.showEstimatedDeliveryTimeInMinutes"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 918
    invoke-static {p0, v1, v0}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTimeInMinutes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 921
    .end local v0    # "edtInStoreTime":Ljava/util/Date;
    .end local v1    # "nowInStoreTime":Ljava/util/Date;
    :cond_0
    return-object v2
.end method

.method private setDaypartIndicator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "setDaypartIndicator"

    invoke-static {p0, v1, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    const v1, 0x7f110202

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/PagerIndicator;

    .line 606
    .local v0, "indicator":Lcom/mcdonalds/app/widget/PagerIndicator;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.ordering.disableDeliveryMenuScroll"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/PagerIndicator;->setupOneDotPager(Landroid/support/v4/view/ViewPager;)V

    .line 615
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/mcdonalds/app/ordering/menu/MenuActivity$14;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$14;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 626
    :cond_0
    :goto_1
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/PagerIndicator;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_0

    .line 623
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method private setStore()V
    .locals 6

    .prologue
    const-string v4, "setStore"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    .line 784
    .local v3, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 786
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    .line 787
    .local v2, "isDelivery":Z
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-nez v4, :cond_2

    const/4 v0, 0x0

    .line 788
    .local v0, "currentDayPart":I
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    if-eqz v4, :cond_0

    .line 789
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->getPositionForMenuTypeId(I)I

    move-result v1

    .line 790
    .local v1, "dayPartPosition":I
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 793
    .end local v1    # "dayPartPosition":I
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v4, :cond_1

    .line 796
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    if-eqz v4, :cond_1

    .line 797
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 801
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setupStoreTitle()V

    .line 802
    return-void

    .line 787
    .end local v0    # "currentDayPart":I
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID(Z)I

    move-result v0

    goto :goto_0
.end method

.method private setupDaypart()V
    .locals 3

    .prologue
    const-string v1, "setupDaypart"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    .line 630
    .local v0, "serviceConnection":Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    invoke-direct {v1, p0, v0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;-><init>(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    .line 631
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 632
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 634
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setDaypartIndicator()V

    .line 635
    return-void
.end method

.method private setupSearch()V
    .locals 3

    .prologue
    const-string v1, "setupSearch"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    const v1, 0x7f110086

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchButton:Landroid/view/View;

    .line 721
    const v1, 0x7f110455

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchContainer:Landroid/view/View;

    .line 722
    const v1, 0x7f110084

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    .line 723
    const v1, 0x7f110456

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 724
    .local v0, "cancelSearchButton":Landroid/view/View;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchButton:Landroid/view/View;

    new-instance v2, Lcom/mcdonalds/app/ordering/menu/MenuActivity$16;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$16;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/MenuActivity$17;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$17;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mFoodSearchEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 739
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchButton:Landroid/view/View;

    const-string v2, "FilterSearchTabPressed"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 740
    const-string v1, "CancelSearchPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method private setupStoreTitle()V
    .locals 18

    .prologue
    const-string v13, "setupStoreTitle"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreTitle:Landroid/widget/TextView;

    if-nez v13, :cond_0

    .line 906
    :goto_0
    return-void

    .line 818
    :cond_0
    const-string v11, " "

    .line 819
    .local v11, "storeTitleString":Ljava/lang/String;
    const-string v2, " "

    .line 821
    .local v2, "dateString":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isFirstTimeDelivery()Z

    move-result v13

    if-nez v13, :cond_8

    .line 822
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v7

    .line 823
    .local v7, "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    const/4 v1, 0x0

    .line 824
    .local v1, "customerAddressString":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 825
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v1

    .line 828
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 829
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x106000c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 835
    :goto_1
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v13, "hh:mm"

    invoke-direct {v8, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 836
    .local v8, "deliveryTimeFormat":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v13, "dd/MM/yy"

    invoke-direct {v5, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 837
    .local v5, "deliveryDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy/MM/dd"

    invoke-direct {v6, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 845
    .local v6, "deliveryDateFormatCN":Ljava/text/SimpleDateFormat;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v13

    const-string v14, "interface.showEstimatedDeliveryTimeInMinutes"

    .line 846
    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 851
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setAsapDeliveryDate(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;

    move-result-object v12

    .line 852
    .local v12, "time":Ljava/lang/String;
    const v13, 0x7f090344

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "</b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "</b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 905
    .end local v1    # "customerAddressString":Ljava/lang/String;
    .end local v5    # "deliveryDateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "deliveryDateFormatCN":Ljava/text/SimpleDateFormat;
    .end local v7    # "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v8    # "deliveryTimeFormat":Ljava/text/SimpleDateFormat;
    .end local v12    # "time":Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreTitle:Landroid/widget/TextView;

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 831
    .restart local v1    # "customerAddressString":Ljava/lang/String;
    .restart local v7    # "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e005e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 855
    .restart local v5    # "deliveryDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v6    # "deliveryDateFormatCN":Ljava/text/SimpleDateFormat;
    .restart local v8    # "deliveryTimeFormat":Ljava/text/SimpleDateFormat;
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 856
    .local v3, "deliveryCal":Ljava/util/Calendar;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v4

    .line 857
    .local v4, "deliveryDate":Ljava/util/Date;
    if-eqz v4, :cond_2

    .line 858
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 860
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v9

    .line 862
    .local v9, "lang":Ljava/lang/String;
    const-string v13, "zh-CHS"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 869
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v13, 0x9

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "\u4e0a\u5348"

    :goto_3
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 870
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 871
    const v13, 0x7f090341

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "</b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "</b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 869
    :cond_5
    const-string v13, "\u4e0b\u5348"

    goto :goto_3

    .line 883
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 884
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v13, 0x9

    .line 885
    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "am"

    :goto_4
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 886
    const v13, 0x7f090341

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "</b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "</b>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 885
    :cond_7
    const-string v13, "pm"

    goto :goto_4

    .line 892
    .end local v1    # "customerAddressString":Ljava/lang/String;
    .end local v3    # "deliveryCal":Ljava/util/Calendar;
    .end local v4    # "deliveryDate":Ljava/util/Date;
    .end local v5    # "deliveryDateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "deliveryDateFormatCN":Ljava/text/SimpleDateFormat;
    .end local v7    # "deliveryOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v8    # "deliveryTimeFormat":Ljava/text/SimpleDateFormat;
    .end local v9    # "lang":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a

    .line 893
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x106000c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 894
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-nez v13, :cond_9

    const-string v10, ""

    .line 895
    .local v10, "storeAddress":Ljava/lang/String;
    :goto_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f09062e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "<b> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "</b>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 898
    goto/16 :goto_2

    .line 894
    .end local v10    # "storeAddress":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPublicName()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 899
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e005e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-nez v13, :cond_b

    const-string v10, ""

    .line 901
    .restart local v10    # "storeAddress":Ljava/lang/String;
    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f09062e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "<b> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "</b>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 900
    .end local v10    # "storeAddress":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v10

    goto :goto_6
.end method

.method private setupTabs()V
    .locals 7

    .prologue
    const-string v5, "setupTabs"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    const v5, 0x7f11045f

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/TabLayout;

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    .line 640
    const v5, 0x7f1100d4

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/NonSwipeableViewPager;

    .line 641
    .local v1, "fragmentPager":Lcom/mcdonalds/app/ui/NonSwipeableViewPager;
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuPagerAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mcdonalds/app/ordering/menu/MenuPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 643
    .local v0, "adapter":Lcom/mcdonalds/app/ordering/menu/MenuPagerAdapter;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    const v6, 0x7f0201a1

    .line 644
    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mRecentsTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 646
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mRecentsTab:Landroid/support/design/widget/TabLayout$Tab;

    const-string v6, "FilterRecentsTabPressed"

    invoke-static {v5, v6}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/support/design/widget/TabLayout$Tab;Ljava/lang/String;)V

    .line 648
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.ordering.hideRecentOrders"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    .line 649
    .local v2, "hideRecents":Z
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    .line 650
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mRecentsTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 651
    new-instance v5, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-direct {v5}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;-><init>()V

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/menu/MenuPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 652
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 653
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x40400000    # 3.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 654
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v3}, Landroid/support/design/widget/TabLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    const v6, 0x7f02019f

    .line 658
    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mFavoritesTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 660
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mFavoritesTab:Landroid/support/design/widget/TabLayout$Tab;

    const-string v6, "FilterFavoritesTabPressed"

    invoke-static {v5, v6}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/support/design/widget/TabLayout$Tab;Ljava/lang/String;)V

    .line 662
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mFavoritesTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 663
    new-instance v5, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    invoke-direct {v5}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;-><init>()V

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/menu/MenuPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 665
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    const v6, 0x7f0900cd

    .line 666
    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mAllTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 667
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mAllTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 669
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mAllTab:Landroid/support/design/widget/TabLayout$Tab;

    const-string v6, "FilterAllTabPressed"

    invoke-static {v5, v6}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/support/design/widget/TabLayout$Tab;Ljava/lang/String;)V

    .line 671
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    .line 672
    .local v4, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v4, :cond_1

    .line 673
    const v5, 0x7f040199

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 676
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.useExpandableCategoriesInGridMenu"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 677
    new-instance v5, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;

    invoke-direct {v5}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mMenuGridFragment:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    .line 678
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mMenuGridFragment:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->setArguments(Landroid/os/Bundle;)V

    .line 679
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mMenuGridFragment:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/menu/MenuPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 686
    :goto_0
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/NonSwipeableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 687
    new-instance v5, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    invoke-direct {v5, v6}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v1, v5}, Lcom/mcdonalds/app/ui/NonSwipeableViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 689
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    new-instance v6, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;

    invoke-direct {v6, p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$15;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;Lcom/mcdonalds/app/ui/NonSwipeableViewPager;)V

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 708
    return-void

    .line 681
    :cond_2
    new-instance v5, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-direct {v5}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mMenuGridFragment:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    .line 682
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mMenuGridFragment:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->setArguments(Landroid/os/Bundle;)V

    .line 683
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mMenuGridFragment:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ordering/menu/MenuPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method private showSearchBar()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "showSearchBar"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->collapseHeader(Z)V

    .line 767
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mAllTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 768
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 772
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    invoke-static {p0, v0, v2}, Lcom/mcdonalds/app/util/UIUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;Z)V

    .line 774
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "ProductsFilterSearchSubview"

    const-string v2, "PageViewed"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logPageLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method private trackFoodPageSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    const-string v0, "trackFoodPageSearch"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1000
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1001
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 1002
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    const-string v0, "/food/food-search"

    invoke-static {v0, p1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackFoodSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :cond_0
    return-void
.end method


# virtual methods
.method public addCatalogListener(Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;

    .prologue
    const-string v0, "addCatalogListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-interface {p1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;->onCatalogReady()V

    .line 574
    return-void
.end method

.method public addOnDayPartChangeListener(Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;

    .prologue
    const-string v1, "addOnDayPartChangeListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mOnDayPartChangeListeners:Ljava/util/List;

    if-nez v1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mOnDayPartChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->getMenuTypeForPosition(I)Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v0

    .line 553
    .local v0, "currentMenuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    if-eqz v0, :cond_0

    .line 554
    invoke-interface {p1, v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;->onDayPartChange(Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    goto :goto_0
.end method

.method public addOnPodChangeListener(Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;

    .prologue
    const-string v0, "addOnPodChangeListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mOnPodChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getCurrentPod()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;->onPodChange(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public catalogSyncWithTimeout()V
    .locals 4

    .prologue
    const-string v0, "catalogSyncWithTimeout"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1025
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mcdonalds/app/ordering/menu/MenuActivity$20;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$20;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1038
    return-void
.end method

.method public checkIfCatalogFail()V
    .locals 4

    .prologue
    const-string v0, "checkIfCatalogFail"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mcdonalds/app/ordering/menu/MenuActivity$19;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$19;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1022
    return-void
.end method

.method public collapseHeader(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    const-string v1, "collapseHeader"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    const v1, 0x7f11045c

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 779
    .local v0, "appBar":Landroid/support/design/widget/AppBarLayout;
    invoke-virtual {v0, v4, p1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 780
    return-void
.end method

.method public firstLoadproducts()V
    .locals 4

    .prologue
    const-string v2, "firstLoadproducts"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mFirstLoadProducts:Z

    if-nez v2, :cond_0

    .line 525
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mFirstLoadProducts:Z

    .line 526
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->getMenuTypeForPosition(I)Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v1

    .line 527
    .local v1, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mOnDayPartChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;

    .line 528
    .local v0, "listener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;
    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;->onDayPartChange(Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    goto :goto_0

    .line 531
    .end local v0    # "listener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;
    .end local v1    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    :cond_0
    return-void
.end method

.method protected getContentViewResource()I
    .locals 2

    .prologue
    const-string v0, "getContentViewResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    const v0, 0x7f040027

    return v0
.end method

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

    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCatalogSync()Z
    .locals 2

    .prologue
    const-string v0, "isCatalogSync"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->isCatalogSync:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    .line 926
    if-eq p1, v5, :cond_0

    if-ne p1, v4, :cond_2

    :cond_0
    if-nez p2, :cond_2

    .line 927
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->finish()V

    .line 996
    :cond_1
    :goto_0
    return-void

    .line 928
    :cond_2
    if-ne p1, v5, :cond_5

    if-ne p2, v3, :cond_5

    .line 930
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSkipFirstLoadAddressWorkflow:Z

    if-eqz v2, :cond_4

    .line 940
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setupDaypart()V

    .line 941
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setupTabs()V

    .line 942
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setStore()V

    .line 943
    const-string v2, "menu_grid"

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->goToFragment(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/services/data/provider/Contract$CurrentStore;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 951
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 952
    iput-boolean v6, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSkipFirstLoadAddressWorkflow:Z

    .line 966
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->checkIfCatalogFail()V

    goto :goto_0

    .line 956
    :cond_4
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setStore()V

    .line 957
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setDaypartIndicator()V

    .line 958
    const-string v2, "menu_grid"

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->goToFragment(Ljava/lang/String;)V

    .line 959
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getCurrentPod()Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, "pod":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mOnPodChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;

    .line 961
    .local v0, "listener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;
    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;->onPodChange(Ljava/lang/String;)V

    goto :goto_1

    .line 967
    .end local v0    # "listener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;
    .end local v1    # "pod":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    if-ne p2, v3, :cond_6

    .line 968
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.ordering.showCartAfterOrderAgain"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 969
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->navigateToBasket()V

    goto :goto_0

    .line 971
    :cond_6
    if-ne p1, v4, :cond_1

    if-ne p2, v3, :cond_1

    .line 972
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSkipFirstLoadAddressWorkflow:Z

    if-eqz v2, :cond_7

    .line 974
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setupDaypart()V

    .line 975
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setupTabs()V

    .line 976
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setStore()V

    .line 977
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mFavoritesTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 978
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/services/data/provider/Contract$CurrentStore;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 983
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 984
    iput-boolean v6, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSkipFirstLoadAddressWorkflow:Z

    goto/16 :goto_0

    .line 987
    :cond_7
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setStore()V

    .line 988
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setDaypartIndicator()V

    .line 989
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mFavoritesTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 990
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getCurrentPod()Ljava/lang/String;

    move-result-object v1

    .line 991
    .restart local v1    # "pod":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mOnPodChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;

    .line 992
    .restart local v0    # "listener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;
    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;->onPodChange(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSkipFirstLoadAddressWorkflow:Z

    .line 142
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const-class v1, Lcom/mcdonalds/app/customer/SignInActivity;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->startActivity(Ljava/lang/Class;)V

    .line 145
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->finish()V

    .line 184
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    if-nez v1, :cond_1

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSkipFirstLoadAddressWorkflow:Z

    .line 149
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mcdonalds/app/ordering/menu/MenuActivity$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$2;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    :cond_1
    const v1, 0x7f0907a7

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setTitle(I)V

    .line 160
    const v1, 0x7f11044d

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    .line 162
    const v1, 0x7f11045e

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "methodSelectorButton":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/MenuActivity$3;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$3;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const-string v1, "PickUpAtRestaurantItemPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 172
    const v1, 0x7f110067

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreTitle:Landroid/widget/TextView;

    .line 175
    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSkipFirstLoadAddressWorkflow:Z

    if-nez v1, :cond_2

    .line 176
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setupDaypart()V

    .line 177
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setupTabs()V

    .line 178
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setStore()V

    .line 179
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->goToReceivedFragment(Landroid/content/Intent;)V

    .line 183
    :cond_2
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setupSearch()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onDestroy()V

    .line 240
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 241
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->deregisterObserver()V

    .line 246
    :cond_0
    return-void
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

    .line 352
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 353
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->goToReceivedFragment(Landroid/content/Intent;)V

    .line 354
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const-string v0, "onPageScrollStateChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const-string v0, "onPageScrolled"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const-string v2, "onPageSelected"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 536
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->getMenuTypeForPosition(I)Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v1

    .line 537
    .local v1, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mOnDayPartChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;

    .line 538
    .local v0, "listener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;
    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;->onDayPartChange(Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    goto :goto_0

    .line 540
    .end local v0    # "listener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onPause()V

    .line 234
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getCurrentPod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mLastKnownPOD:Ljava/lang/String;

    .line 235
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 188
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onResume()V

    .line 189
    new-instance v5, Lcom/mcdonalds/app/ordering/menu/MenuActivity$4;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$4;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 190
    .local v3, "languageType":Ljava/lang/reflect/Type;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    const-string v6, "CATALOG_CURRENT_LANGUAGE"

    invoke-virtual {v5, v6, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, "languageResponse":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "currentLanguage":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 193
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    const-string v6, "CATALOG_CURRENT_LANGUAGE"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v1, v8, v9}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 194
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->clearMarketCache(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->clearStoreCache(Landroid/content/Context;)V

    .line 196
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    const-string v6, "cache_market_catalog"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 197
    invoke-direct {p0, v10}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->checkCatalogStatus(Z)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v11, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mcdonalds/sdk/services/data/provider/Contract$CurrentStore;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStoreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 203
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eq v5, v6, :cond_3

    .line 204
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setStore()V

    .line 205
    invoke-direct {p0, v10}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->checkCatalogStatus(Z)V

    .line 209
    :goto_0
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    if-eqz v5, :cond_1

    .line 210
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mDayPartPagerAdapter:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->registerObserver()V

    .line 214
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 215
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getCurrentPod()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "currPOD":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mLastKnownPOD:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mLastKnownPOD:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 223
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mOnPodChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;

    .line 224
    .local v4, "listener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;
    invoke-interface {v4, v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;->onPodChange(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    .end local v0    # "currPOD":Ljava/lang/String;
    .end local v4    # "listener":Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;
    :cond_3
    invoke-direct {p0, v11}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->checkCatalogStatus(Z)V

    goto :goto_0

    .line 226
    .restart local v0    # "currPOD":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setStore()V

    .line 228
    :cond_5
    return-void
.end method

.method public removeSearchFilter()V
    .locals 2

    .prologue
    const-string v0, "removeSearchFilter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 754
    :cond_0
    return-void
.end method

.method public setCatalogSync(Z)V
    .locals 4
    .param p1, "catalogSync"    # Z

    .prologue
    const-string v0, "setCatalogSync"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    const-string v0, "cataUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCatalogSync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->isCatalogSync:Z

    .line 262
    return-void
.end method

.method public setSearchFilter(Landroid/widget/Filter;)V
    .locals 3
    .param p1, "filter"    # Landroid/widget/Filter;

    .prologue
    const-string v0, "setSearchFilter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    new-instance v0, Lcom/mcdonalds/app/util/TextChangeFilter;

    invoke-direct {v0, p1}, Lcom/mcdonalds/app/util/TextChangeFilter;-><init>(Landroid/widget/Filter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mWatcher:Landroid/text/TextWatcher;

    .line 745
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mSearchBar:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 748
    :cond_0
    return-void
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public showCatalogSyncErrorAlert()V
    .locals 3

    .prologue
    const-string v0, "showCatalogSyncErrorAlert"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogSyncErrorAlert:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0b00b1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f09015a

    .line 310
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090159

    .line 311
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 312
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090145

    new-instance v2, Lcom/mcdonalds/app/ordering/menu/MenuActivity$7;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$7;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0906b5

    new-instance v2, Lcom/mcdonalds/app/ordering/menu/MenuActivity$6;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity$6;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    .line 319
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogSyncErrorAlert:Landroid/support/v7/app/AlertDialog;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mCatalogSyncErrorAlert:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 331
    :cond_1
    return-void
.end method

.method protected final showFavoriteMethodSelector()V
    .locals 3

    .prologue
    const-string v1, "showFavoriteMethodSelector"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "favorite"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 598
    return-void
.end method

.method public showFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    const-string v0, "showFragment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->showFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 359
    return-void
.end method

.method public showFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "showFragment"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->goToFragment(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method protected final showOrderMethodSelector()V
    .locals 2

    .prologue
    const-string v0, "showOrderMethodSelector"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    const-class v0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->startActivityForResult(Ljava/lang/Class;I)V

    .line 592
    return-void
.end method
