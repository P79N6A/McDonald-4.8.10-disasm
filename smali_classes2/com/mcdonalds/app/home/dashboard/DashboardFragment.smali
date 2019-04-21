.class public Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final REFRESH_ANIMATION_DURATION:I

.field private extras:Landroid/os/Bundle;

.field private isRefreshing:Z

.field private mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

.field private mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncCounter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mCatalogObserver:Landroid/database/ContentObserver;

.field private mCurrentLoginState:Z

.field private mDeliveryOffers:Z

.field private mFirstNameGreeting:Ljava/lang/String;

.field private mHeaderView:Landroid/view/View;

.field private mIsMySurprises:Z

.field private mNearbyOffers:Z

.field private mNeedsRefresh:Z

.field private mOfferCount:I

.field private mOfferSectionHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

.field private mOffersSectionFavoriteHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

.field private mOffersSectionFurtherAwayHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

.field private final mOnClickPromo:Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mPickUpOffers:Z

.field private mPromoFragmentStatePagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

.field private mPromoPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

.field private final mPromosListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/Promo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPushOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

.field private mQueuedRecipeId:Ljava/lang/String;

.field private mRecipeLoadedListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-class v0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 158
    const/16 v0, 0x96

    iput v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->REFRESH_ANIMATION_DURATION:I

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNeedsRefresh:Z

    .line 230
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mCatalogObserver:Landroid/database/ContentObserver;

    .line 699
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromosListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 728
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOnClickPromo:Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;

    .line 934
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$13;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$13;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mRecipeLoadedListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-void
.end method

.method private CheckInBreakfastTime(Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 19
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const-string v14, "CheckInBreakfastTime"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1338
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    .line 1339
    .local v5, "currStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.dayparts.daypartEndingAlertTime"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1340
    .local v4, "alertTimeConfig":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 1341
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1342
    .local v6, "isDelivery":Ljava/lang/Boolean;
    const-string v14, "ordering"

    invoke-static {v14}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 1344
    .local v10, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID()I

    move-result v11

    .line 1345
    .local v11, "typeId":I
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getMenuTypes()Ljava/util/List;

    move-result-object v9

    .line 1346
    .local v9, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    const/4 v8, 0x0

    .line 1347
    .local v8, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 1348
    .local v7, "mType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v15

    if-ne v15, v11, :cond_0

    .line 1349
    move-object v8, v7

    goto :goto_0

    .line 1352
    .end local v7    # "mType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1353
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v5, v8, v14}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuEndingTime(Lcom/mcdonalds/sdk/modules/models/MenuType;Z)J

    move-result-wide v12

    .line 1354
    .local v12, "timeLeftInMenu":J
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1356
    .local v2, "alertTime":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_2

    cmp-long v14, v12, v2

    if-gtz v14, :cond_2

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    const v15, 0x7f0903e1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1358
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    const v15, 0x7f0905d4

    .line 1359
    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v14

    .line 1360
    invoke-virtual {v14}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v14

    .line 1361
    invoke-virtual {v14}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1362
    const/4 v14, 0x1

    .line 1366
    .end local v2    # "alertTime":J
    .end local v6    # "isDelivery":Ljava/lang/Boolean;
    .end local v8    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    .end local v9    # "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    .end local v10    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .end local v11    # "typeId":I
    .end local v12    # "timeLeftInMenu":J
    :goto_1
    return v14

    :cond_2
    const/4 v14, 0x0

    goto :goto_1
.end method

.method private StartDeliveryOrder()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "StartDeliveryOrder"

    invoke-static {p0, v3, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1370
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 1371
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1372
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    .line 1373
    .local v1, "finalExtras":Landroid/os/Bundle;
    new-instance v2, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$22;

    invoke-direct {v2, p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$22;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 1396
    .local v2, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f090156

    .line 1397
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f090182

    .line 1398
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f09011a

    .line 1399
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const/4 v4, 0x0

    .line 1400
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 1401
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 1402
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1422
    .end local v1    # "finalExtras":Landroid/os/Bundle;
    .end local v2    # "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    :goto_0
    return-void

    .line 1404
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1405
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setNormalOrder(Z)V

    .line 1407
    :cond_2
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 1408
    sget-object v3, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 1409
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    const-string v4, "start_order_delivery"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setModuleName(Ljava/lang/String;)V

    .line 1411
    new-instance v3, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$23;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$23;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->CheckInBreakfastTime(Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1419
    const-class v3, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    const-string v4, "start_order_delivery"

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private StartOrder(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const-string v4, "StartOrder"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1424
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1425
    .local v2, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "EVENT_NAME"

    const-string v5, "pickup"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Food"

    new-instance v6, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/CustomerEventAction;

    sget-object v7, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM1:Lcom/admaster/square/api/CustomEvent;

    invoke-direct {v6, v7}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/CustomerEventAction;-><init>(Lcom/admaster/square/api/CustomEvent;)V

    invoke-static {v4, v5, v2, v6}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)V

    .line 1429
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 1430
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1431
    move-object v1, p1

    .line 1432
    .local v1, "finalExtras":Landroid/os/Bundle;
    new-instance v3, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;

    invoke-direct {v3, p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 1455
    .local v3, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v5, 0x7f090156

    .line 1456
    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v5, 0x7f090182

    .line 1457
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    const v5, 0x7f09011a

    .line 1458
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 1459
    invoke-virtual {v4, v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v4

    .line 1460
    invoke-virtual {v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 1461
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1481
    .end local v1    # "finalExtras":Landroid/os/Bundle;
    .end local v3    # "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1464
    invoke-virtual {v0, v8}, Lcom/mcdonalds/sdk/modules/models/Order;->setNormalOrder(Z)V

    .line 1466
    :cond_2
    invoke-virtual {v0, v8}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 1467
    sget-object v4, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 1468
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v4

    const-string v5, "start_order"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setModuleName(Ljava/lang/String;)V

    .line 1470
    new-instance v4, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$25;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$25;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    invoke-direct {p0, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->CheckInBreakfastTime(Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1478
    const-class v4, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    const-string v5, "start_order"

    invoke-virtual {p0, v4, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->newPromoWorkflowForProduct(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->refresh()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->isMSALink(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->newPromoWorkflowForOffer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onClickPromoCategory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$1302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iput-boolean p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->isRefreshing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Landroid/content/res/Resources;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$1500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateCurrentLocationSubtitle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$1600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->checkAndDisplayOffers(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/app/home/HomeListItem;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Lcom/mcdonalds/app/home/HomeListItem;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$1700"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->checkIfDuplicateOrderAlertEnabled(Lcom/mcdonalds/app/home/HomeListItem;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/app/home/HomeListItem;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Lcom/mcdonalds/app/home/HomeListItem;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$1800"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->homeListItemClicked(Lcom/mcdonalds/app/home/HomeListItem;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Landroid/os/Bundle;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$1900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/widget/HeaderViewPager;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$2000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->StartOrder(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$2100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->CheckInBreakfastTime(Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "x2"    # Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$2200"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->commonOnOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/sdk/AsyncCounter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoFragmentStatePagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p1, "x1"    # Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoFragmentStatePagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOnClickPromo:Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populatePromos()V

    return-void
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method private addRemoveFromBasketView()V
    .locals 4

    .prologue
    const-string v2, "addRemoveFromBasketView"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1921
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getCurrentOrderOffers()Ljava/util/List;

    move-result-object v1

    .line 1922
    .local v1, "currentOrderOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->verifyIsAddedToOrder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1923
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 1924
    .local v0, "currentOrderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1925
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addRemoveFromBasketView(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    goto :goto_0

    .line 1929
    .end local v0    # "currentOrderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeRemoveFromBasketView()V

    .line 1931
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->setCurrentOrderOffers(Ljava/util/List;)V

    .line 1932
    return-void
.end method

.method private checkAndDisplayOffers(Z)V
    .locals 5
    .param p1, "isSwitchingTabs"    # Z

    .prologue
    const/4 v4, 0x1

    const-string v0, "checkAndDisplayOffers"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1762
    invoke-direct {p0, p1, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->displayOffers(ZZ)V

    .line 1763
    return-void
.end method

.method private checkAutoLoginFailed()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const-string v7, "checkAutoLoginFailed"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    .line 316
    .local v1, "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "prefSavedLogin":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLoginPass()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "prefSavedLoginPass":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedSocialNetworkId()I

    move-result v4

    .line 320
    .local v4, "prefSavedSocialID":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 321
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 323
    .local v0, "autoLogin":Z
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/LanguageUtil;->getPrefRememberLogin()Z

    move-result v5

    .line 324
    .local v5, "rememberLogin":Z
    if-eqz v0, :cond_1

    if-nez v5, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v7

    const v8, 0x7f0900fd

    .line 327
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v7

    const v8, 0x7f0900fc

    .line 328
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v7

    const v8, 0x7f0905d4

    .line 329
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$3;

    invoke-direct {v9, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$3;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v7

    const v8, 0x7f090138

    .line 335
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;

    invoke-direct {v9, p0, v4, v2, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v7

    .line 354
    invoke-virtual {v7, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 356
    :cond_1
    return-void

    .end local v0    # "autoLogin":Z
    .end local v5    # "rememberLogin":Z
    :cond_2
    move v0, v6

    .line 321
    goto :goto_0
.end method

.method private checkIfCurrentStoreIsOpen()V
    .locals 6

    .prologue
    const-string v4, "checkIfCurrentStoreIsOpen"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    const-string v4, "storeLocator"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 562
    .local v3, "storeLocatorModule":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    const-string v4, "customer"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 563
    .local v1, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const/4 v0, 0x0

    .line 564
    .local v0, "currentStoreId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 565
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    :cond_0
    new-instance v2, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$6;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$6;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    .line 576
    .local v2, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 577
    new-instance v4, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$7;

    invoke-direct {v4, p0, v2, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$7;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Landroid/content/DialogInterface$OnClickListener;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    invoke-virtual {v3, v0, v4}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoreForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 599
    :cond_1
    return-void
.end method

.method private checkIfDuplicateOrderAlertEnabled(Lcom/mcdonalds/app/home/HomeListItem;)V
    .locals 5
    .param p1, "item"    # Lcom/mcdonalds/app/home/HomeListItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "checkIfDuplicateOrderAlertEnabled"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "menu_grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start_order_delivery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start_order"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1199
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isDuplicateOrderCheckinFlow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "CHECKIN_TIMER"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->hasObjectInCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1200
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isDuplicateOrderCheckinAllowOrdering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1201
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$20;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$20;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/app/home/HomeListItem;)V

    invoke-static {v0, v4, v2, v1}, Lcom/mcdonalds/app/util/UIUtils;->showCheckinFlowAlert(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 1219
    :goto_0
    return-void

    .line 1211
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2, v2}, Lcom/mcdonalds/app/util/UIUtils;->showCheckinFlowAlert(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 1217
    :cond_2
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->homeListItemClicked(Lcom/mcdonalds/app/home/HomeListItem;)V

    goto :goto_0
.end method

.method private commonOnOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)V
    .locals 6
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "selection"    # Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .prologue
    const-string v2, "commonOnOfferClick"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1529
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "On click"

    .line 1530
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 1531
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 1532
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 1533
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 1534
    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setECommercePromotion(Lcom/mcdonalds/sdk/modules/models/Offer;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 1535
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 1536
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 1538
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "offer_click"

    .line 1539
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "offer_id"

    .line 1540
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "offer_name"

    .line 1541
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 1542
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v2

    .line 1538
    invoke-static {v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 1544
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1545
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "offer_selection_type"

    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1546
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    const-string v3, "extra_offer"

    invoke-virtual {v2, v3, p1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1548
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1549
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->stopRefresh()V

    .line 1550
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$27;

    invoke-direct {v3, p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$27;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Landroid/os/Bundle;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1559
    :goto_0
    return-void

    .line 1557
    :cond_0
    const-class v2, Lcom/mcdonalds/app/offers/OfferActivity;

    const-string v3, "offer_detail"

    const/16 v4, 0x56d

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method private displayOffers(ZZ)V
    .locals 10
    .param p1, "isSwitchingTabs"    # Z
    .param p2, "hasAddress"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "displayOffers"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v6, v8

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v6, v9

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1767
    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mIsMySurprises:Z

    if-eqz v5, :cond_0

    .line 1768
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->displaySurprises()V

    .line 1895
    :goto_0
    return-void

    .line 1773
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeNoOffersView()V

    .line 1774
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->showProgressSpinner(Z)V

    .line 1775
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeNoSelectedStoreView()V

    .line 1780
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    if-eqz v5, :cond_1

    if-eqz p2, :cond_2

    .line 1782
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1784
    :cond_2
    if-nez p1, :cond_3

    .line 1785
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->setOfferTabSelection(Z)V

    .line 1786
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferSectionHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    invoke-virtual {v5, v6, v9}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addSectionHeader(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;Z)V

    .line 1787
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeAllOffers(Z)V

    .line 1791
    :goto_1
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addNoSelectedStoreView(Z)V

    .line 1792
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->showProgressSpinner(Z)V

    goto :goto_0

    .line 1789
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeAllOffers(Z)V

    goto :goto_1

    .line 1796
    :cond_4
    if-nez p1, :cond_6

    .line 1797
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->setOfferTabSelection(Z)V

    .line 1798
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferSectionHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    invoke-virtual {v5, v6, v9}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addSectionHeader(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;Z)V

    .line 1799
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeAllOffers(Z)V

    .line 1800
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getOfferCount()I

    move-result v5

    iput v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    .line 1808
    :goto_2
    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPickUpOffers:Z

    if-eqz v5, :cond_7

    .line 1809
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getCurrentStorePickupOffers()Ljava/util/List;

    move-result-object v3

    .line 1810
    .local v3, "offersToDisplayInGrid":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1835
    .local v4, "offersToDisplayInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :goto_3
    invoke-static {v3}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    .line 1836
    .local v0, "hasOffersToDisplayInGrid":Z
    invoke-static {v4}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    .line 1838
    .local v1, "hasOffersToDisplayInList":Z
    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1840
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addNoGPSView()V

    .line 1873
    :cond_5
    :goto_4
    iget v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    if-lez v5, :cond_f

    if-eqz v1, :cond_f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1875
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOffersSectionFurtherAwayHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    :goto_5
    invoke-virtual {v6, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addOffersSubsectionHeader(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;)V

    .line 1879
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 1880
    .local v2, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    iget v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    if-lez v6, :cond_f

    .line 1881
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v6, v2, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addOffer(Lcom/mcdonalds/sdk/modules/models/Offer;Z)V

    .line 1882
    iget v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    goto :goto_6

    .line 1802
    .end local v0    # "hasOffersToDisplayInGrid":Z
    .end local v1    # "hasOffersToDisplayInList":Z
    .end local v2    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v3    # "offersToDisplayInGrid":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .end local v4    # "offersToDisplayInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_6
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeAllOffers(Z)V

    .line 1803
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getOfferCount()I

    move-result v5

    iput v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    goto :goto_2

    .line 1811
    :cond_7
    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    if-eqz v5, :cond_8

    .line 1812
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getCurrentStoreDeliveryOffers()Ljava/util/List;

    move-result-object v3

    .line 1813
    .restart local v3    # "offersToDisplayInGrid":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getFavoriteStoreDeliveryOffers()Ljava/util/List;

    move-result-object v4

    .restart local v4    # "offersToDisplayInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    goto :goto_3

    .line 1815
    .end local v3    # "offersToDisplayInGrid":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .end local v4    # "offersToDisplayInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_8
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getCurrentStoreDeliveryOffers()Ljava/util/List;

    move-result-object v3

    .line 1817
    .restart local v3    # "offersToDisplayInGrid":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .line 1818
    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getALittleFurtherOffers()Ljava/util/List;

    move-result-object v4

    .line 1819
    .restart local v4    # "offersToDisplayInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :goto_7
    goto/16 :goto_3

    .line 1818
    .end local v4    # "offersToDisplayInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_9
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .line 1819
    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getFavoriteStorePickupOffers()Ljava/util/List;

    move-result-object v4

    goto :goto_7

    .line 1842
    .restart local v0    # "hasOffersToDisplayInGrid":Z
    .restart local v1    # "hasOffersToDisplayInList":Z
    .restart local v4    # "offersToDisplayInList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_a
    if-eqz v0, :cond_c

    .line 1844
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 1846
    .restart local v2    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    iget v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    if-lez v6, :cond_b

    .line 1848
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v6, v2, v9}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addOffer(Lcom/mcdonalds/sdk/modules/models/Offer;Z)V

    .line 1849
    iget v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    goto :goto_8

    .line 1856
    .end local v2    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_b
    if-eqz v1, :cond_5

    .line 1858
    invoke-direct {p0, v3, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->removeDuplicates(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_4

    .line 1862
    :cond_c
    if-nez v0, :cond_d

    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    if-eqz v5, :cond_d

    .line 1864
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addNoRestaurantsNearbyView()V

    goto/16 :goto_4

    .line 1866
    :cond_d
    if-nez v1, :cond_5

    .line 1868
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addNoOffersView()V

    goto/16 :goto_4

    .line 1875
    :cond_e
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOffersSectionFavoriteHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    goto/16 :goto_5

    .line 1889
    :cond_f
    if-nez p1, :cond_10

    .line 1890
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->addRemoveFromBasketView()V

    .line 1891
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v5, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1894
    :cond_10
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v5, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->showProgressSpinner(Z)V

    goto/16 :goto_0
.end method

.method private displaySurprises()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v2, "displaySurprises"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1899
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeNoOffersView()V

    .line 1900
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeAllOffers(Z)V

    .line 1901
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferSectionHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    invoke-virtual {v2, v3, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addSectionHeader(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;Z)V

    .line 1903
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getActiveOffers()Ljava/util/List;

    move-result-object v1

    .line 1904
    .local v1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1906
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 1907
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addOffer(Lcom/mcdonalds/sdk/modules/models/Offer;Z)V

    goto :goto_0

    .line 1911
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addNoOffersView()V

    .line 1914
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->addRemoveFromBasketView()V

    .line 1916
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1917
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->showProgressSpinner(Z)V

    .line 1918
    return-void
.end method

.method private homeListItemClicked(Lcom/mcdonalds/app/home/HomeListItem;)V
    .locals 12
    .param p1, "item"    # Lcom/mcdonalds/app/home/HomeListItem;

    .prologue
    const-string v8, "homeListItemClicked"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    .line 1225
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getAttributes()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1227
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    .line 1228
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1229
    .local v5, "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/Serializable;

    invoke-virtual {v10, v5, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 1233
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, "order/last/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    if-eqz v8, :cond_3

    .line 1235
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1236
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1238
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1239
    .local v2, "b":Landroid/os/Bundle;
    const-string v8, "LAST_ORDER_FRAGMENT_NAME"

    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const-string v8, "PASS_THROUGH_ARGS"

    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1241
    const-class v8, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/16 v9, 0x69a

    invoke-virtual {p0, v8, v2, v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 1247
    .end local v2    # "b":Landroid/os/Bundle;
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1248
    .local v4, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "EVENT_NAME"

    const-string v9, "larestorder"

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    new-instance v8, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 1250
    invoke-virtual {v8, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v8

    .line 1251
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 1252
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v8, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v8, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 1335
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v4    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_2
    return-void

    .line 1244
    :cond_2
    const-class v8, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;

    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9, v10}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1254
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, "order/track/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1256
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, "order/track/"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1258
    .local v7, "orderNumber":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1259
    .local v1, "arguments":Landroid/os/Bundle;
    const-string v8, "arg_order_number"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v8, "arg_edt"

    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getSubTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-class v8, Lcom/mcdonalds/app/ordering/summary/TrackOrderActivity;

    invoke-virtual {p0, v8, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1264
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1265
    .restart local v4    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "EVENT_NAME"

    const-string v9, "process"

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    new-instance v8, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 1267
    invoke-virtual {v8, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v8

    .line 1268
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 1269
    .restart local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v8, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v8, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_2

    .line 1271
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v1    # "arguments":Landroid/os/Bundle;
    .end local v4    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "orderNumber":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, "latest_order"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1272
    const-class v8, Lcom/mcdonalds/app/ordering/LatestOrderActivity;

    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_2

    .line 1274
    :cond_5
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, "menu_grid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1276
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Food"

    invoke-static {v8, v9}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1278
    :cond_6
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, "start_order_delivery"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1279
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1280
    .restart local v4    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "EVENT_NAME"

    const-string v9, "mds"

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Food"

    new-instance v10, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/CustomerEventAction;

    sget-object v11, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM1:Lcom/admaster/square/api/CustomEvent;

    invoke-direct {v10, v11}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/CustomerEventAction;-><init>(Lcom/admaster/square/api/CustomEvent;)V

    invoke-static {v8, v9, v4, v10}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)V

    .line 1284
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->StartDeliveryOrder()V

    goto/16 :goto_2

    .line 1285
    .end local v4    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, "start_order"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1286
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "interface.dashboard.warnNonMobileOrdering"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1287
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    .line 1288
    .local v3, "currStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1289
    new-instance v6, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$21;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$21;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    .line 1297
    .local v6, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const v9, 0x7f090525

    .line 1298
    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    const v9, 0x7f0905d4

    .line 1299
    invoke-virtual {v8, v9, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v8

    .line 1300
    invoke-virtual {v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    .line 1301
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1303
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v8

    const-string v9, "Mobile ordering is not supported"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1308
    .end local v3    # "currStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v6    # "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_8
    iget-object v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->StartOrder(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1309
    :cond_9
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, "store_locator"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1324
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Restaurant Locator"

    invoke-static {v8, v9}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1326
    :cond_a
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, "nutrition_list"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1327
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Restaurant Locator"

    invoke-static {v8, v9}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1329
    :cond_b
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, "favorites_grid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1330
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Restaurant Locator"

    invoke-static {v8, v9}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p1}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2
.end method

.method private initializeRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const-string v1, "initializeRecyclerView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    iget-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Z)V

    iput-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    .line 616
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->setOfferTabSelection(Z)V

    .line 618
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 619
    .local v0, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$8;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$8;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 633
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 634
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 635
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/SpacesItemDecoration;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/mcdonalds/app/home/dashboard/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 636
    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 637
    return-void
.end method

.method private isMSALink(Ljava/lang/String;)Z
    .locals 4
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isMSALink"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    if-eqz p1, :cond_0

    const-string v2, "morning_surprise_alarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private loadNutritionModule()V
    .locals 2

    .prologue
    const-string v0, "loadNutritionModule"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 248
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->checkForQueuedRecipeLoading()V

    .line 249
    return-void
.end method

.method private newPromoWorkflowForOffer(Ljava/lang/String;)V
    .locals 3
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    const-string v0, "newPromoWorkflowForOffer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Lcom/mcdonalds/app/navigation/NavigationManager;->getInstance()Lcom/mcdonalds/app/navigation/NavigationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/app/navigation/NavigationManager;->showOffer(Landroid/content/Context;Ljava/lang/String;)V

    .line 868
    :goto_0
    return-void

    .line 866
    :cond_0
    const-class v0, Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private newPromoWorkflowForProduct(Ljava/lang/String;)V
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const-string v1, "newPromoWorkflowForProduct"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 877
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getIsPODSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onClickPromoProduct(Ljava/lang/String;)V

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    const-class v1, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/16 v2, 0x4c7

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivityForResult(Ljava/lang/Class;I)V

    goto :goto_0
.end method

.method private onClickPromoCategory(Ljava/lang/String;)V
    .locals 5
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onClickPromoCategory"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 887
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "arg_category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v1, "module"

    const-string v2, "ordering"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v1, "modal"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 891
    const-class v1, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    const-string v2, "menu_grid"

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 892
    return-void
.end method

.method private onOfferItemClicked(Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 6
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const-string v1, "onOfferItemClicked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    iget-boolean v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    if-nez v1, :cond_0

    sget-object v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Current:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .line 1513
    .local v0, "selection":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1514
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->stopRefresh()V

    .line 1515
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$26;

    invoke-direct {v2, p0, p1, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$26;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1524
    :goto_1
    return-void

    .line 1509
    .end local v0    # "selection":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Nearby:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    goto :goto_0

    .line 1522
    .restart local v0    # "selection":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->commonOnOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)V

    goto :goto_1
.end method

.method private populateAlerts()V
    .locals 3

    .prologue
    const-string v1, "populateAlerts"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1032
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isEmailVerified()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isMobileVerified()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1033
    .local v0, "verified":Z
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addAlertItem(Z)V

    .line 1034
    return-void

    .line 1032
    .end local v0    # "verified":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateCurrentLocationSubtitle()V
    .locals 3

    .prologue
    const-string v1, "populateCurrentLocationSubtitle"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getCurrentStoreName()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "storeName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 642
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->setCurrentStoreSubtitle(Ljava/lang/String;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->setCurrentStoreSubtitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private populateCustomerLastOrder()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "populateCustomerLastOrder"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.dashboard.hideLastOrder"

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1082
    .local v0, "showLastOrder":Z
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isInterimCheckinFlow()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    new-instance v2, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$15;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$15;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getCustomerLastOrder(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1103
    :cond_1
    return-void
.end method

.method private populateDailyAdvertisablePromotions()V
    .locals 5

    .prologue
    const-string v3, "populateDailyAdvertisablePromotions"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1162
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 1163
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_0

    .line 1164
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1165
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const-string v2, ""

    .line 1166
    .local v2, "userName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1167
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    .line 1170
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v2    # "userName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private populateHomeListItems()V
    .locals 4

    .prologue
    const-string v2, "populateHomeListItems"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getHomeListItems()Ljava/util/List;

    move-result-object v1

    .line 608
    .local v1, "homeListItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/home/HomeListItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/HomeListItem;

    .line 609
    .local v0, "homeListItem":Lcom/mcdonalds/app/home/HomeListItem;
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addHomeListItem(Lcom/mcdonalds/app/home/HomeListItem;)V

    goto :goto_0

    .line 611
    .end local v0    # "homeListItem":Lcom/mcdonalds/app/home/HomeListItem;
    :cond_0
    return-void
.end method

.method private populateLatestOrderNumber()V
    .locals 9

    .prologue
    const-string v0, "populateLatestOrderNumber"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.ordering.cacheLatestOrderMinutes"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1060
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getLatestOrderNumber()Ljava/lang/String;

    move-result-object v6

    .line 1062
    .local v6, "latestOrderNumber":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1063
    .local v5, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    if-eqz v6, :cond_0

    .line 1064
    const-string v0, "EXTRA_ORDER_NUMBER"

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const-string v0, "EXTRA_IS_DRIVE_THRU"

    .line 1066
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isLatestOrderDriveThru()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1065
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    new-instance v0, Lcom/mcdonalds/app/home/HomeListItem;

    const v1, 0x7f02019e

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0901b1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v4, v8

    .line 1069
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0901b2

    .line 1070
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mcdmobileapp://latest_order"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/home/HomeListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1068
    invoke-virtual {v7, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addHomeListItem(Lcom/mcdonalds/app/home/HomeListItem;)V

    .line 1075
    .end local v5    # "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    .end local v6    # "latestOrderNumber":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private populateOffers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v2, "populateOffers"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1159
    :goto_0
    return-void

    .line 1129
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$17;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$17;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    .line 1140
    .local v0, "favStoreAsyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$18;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$18;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    .line 1151
    .local v1, "offerAsyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isSubscribedToOffers()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1152
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addNotSubscribedToOffersView()V

    goto :goto_0

    .line 1154
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeAllOffers(Z)V

    .line 1155
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->showProgressSpinner(Z)V

    .line 1156
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/AsyncCounter;->incrementMax()V

    .line 1157
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v2, v1, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getOffers(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method private populatePromos()V
    .locals 6

    .prologue
    const-string v3, "populatePromos"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    .line 652
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/AsyncCounter;->incrementMax()V

    .line 653
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromosListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getPromoList(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 697
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoFragmentStatePagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    if-eqz v3, :cond_1

    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoFragmentStatePagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 659
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoFragmentStatePagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/util/ImageViewFragment;

    move-object v1, v3

    check-cast v1, Lcom/mcdonalds/app/util/ImageViewFragment;

    .line 660
    .local v1, "imageViewFragment":Lcom/mcdonalds/app/util/ImageViewFragment;
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/ImageViewFragment;->refreshImageView()V

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 664
    .end local v0    # "i":I
    .end local v1    # "imageViewFragment":Lcom/mcdonalds/app/util/ImageViewFragment;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f110202

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    .line 665
    .local v2, "indicator":Lcom/mcdonalds/app/widget/PagerIndicatorGroup;
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoFragmentStatePagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->setCount(I)V

    .line 666
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->select(I)V

    .line 668
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    new-instance v4, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$9;

    invoke-direct {v4, p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$9;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/app/widget/PagerIndicatorGroup;)V

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/widget/HeaderViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0
.end method

.method private refresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "refresh"

    invoke-static {p0, v0, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    iget-boolean v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->isRefreshing:Z

    if-nez v0, :cond_1

    .line 991
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->isRefreshing:Z

    .line 992
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->clear()V

    .line 993
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addHeaderView(Landroid/view/View;)V

    .line 995
    new-instance v0, Lcom/mcdonalds/sdk/AsyncCounter;

    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$14;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$14;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    invoke-direct {v0, v2, v1}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    .line 1005
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateLatestOrderNumber()V

    .line 1006
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateHomeListItems()V

    .line 1007
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateAlerts()V

    .line 1008
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateCurrentLocationSubtitle()V

    .line 1009
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateCustomerLastOrder()V

    .line 1010
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateScheduledOrders()V

    .line 1011
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateOffers()V

    .line 1012
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateDailyAdvertisablePromotions()V

    .line 1013
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populatePromos()V

    .line 1015
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isLoggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->setLoginState(Z)V

    .line 1017
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getOfferCount()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    .line 1018
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isLoggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mCurrentLoginState:Z

    .line 1020
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->updateDrawerLoginState()V

    .line 1021
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 1022
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNeedsRefresh:Z

    .line 1023
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->checkAutoLoginFailed()V

    .line 1027
    :cond_0
    const-string v0, "offer_view_all"

    invoke-static {v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;)V

    .line 1029
    :cond_1
    return-void
.end method

.method private removeDuplicates(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "primary":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .local p2, "secondary":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v3, "removeDuplicates"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1935
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1936
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1937
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 1938
    .local v2, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 1939
    .local v0, "gridOffer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1940
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1945
    .end local v0    # "gridOffer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v2    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_2
    return-void
.end method

.method private skipSignIn()V
    .locals 8

    .prologue
    const-string v6, "skipSignIn"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1619
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    .line 1620
    .local v2, "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v3

    .line 1621
    .local v3, "prefSavedLogin":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLoginPass()Ljava/lang/String;

    move-result-object v4

    .line 1622
    .local v4, "prefSavedLoginPass":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedSocialNetworkId()I

    move-result v5

    .line 1624
    .local v5, "prefSavedSocialID":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1625
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1627
    .local v0, "autoLogin":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1628
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1629
    .local v1, "extras":Landroid/os/Bundle;
    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 1630
    const-string v6, "EXTRA_AUTO_LOGIN_USERNAME"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    const-string v6, "EXTRA_AUTO_LOGIN_PASSWORD"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    :goto_1
    const-class v6, Lcom/mcdonalds/app/customer/SignInActivity;

    const-string v7, "signin"

    invoke-virtual {p0, v6, v7, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1640
    .end local v1    # "extras":Landroid/os/Bundle;
    :goto_2
    return-void

    .line 1625
    .end local v0    # "autoLogin":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1633
    .restart local v0    # "autoLogin":Z
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string v6, "EXTRA_AUTO_LOGIN_USERNAME"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    const-string v6, "EXTRA_AUTO_LOGIN_PASSWORD"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1638
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_3
    const-class v6, Lcom/mcdonalds/app/customer/SignInActivity;

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_2
.end method

.method private updateDrawerLoginState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, "updateDrawerLoginState"

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1043
    iget-boolean v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mCurrentLoginState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mFirstNameGreeting:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1044
    iput-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mFirstNameGreeting:Ljava/lang/String;

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    .line 1049
    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1100d3

    .line 1050
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    .line 1052
    .local v0, "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    if-eqz v0, :cond_1

    .line 1053
    iget-boolean v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mCurrentLoginState:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setLoggedInDrawerState(Z)V

    .line 1056
    .end local v0    # "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    :cond_1
    return-void
.end method

.method private updateOffersTabSelectionState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "updateOffersTabSelectionState"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1951
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1952
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 1953
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getIsPODSet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1955
    :cond_0
    iput-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPickUpOffers:Z

    .line 1956
    iput-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    .line 1963
    .end local v0    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_1
    :goto_0
    return-void

    .line 1958
    .restart local v0    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_2
    iput-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPickUpOffers:Z

    .line 1959
    iput-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    .line 1960
    iput-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    goto :goto_0
.end method


# virtual methods
.method public checkForQueuedRecipeLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "checkForQueuedRecipeLoading"

    invoke-static {p0, v0, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mQueuedRecipeId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mQueuedRecipeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mRecipeLoadedListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 254
    iput-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mQueuedRecipeId:Ljava/lang/String;

    .line 256
    :cond_0
    return-void
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    const v0, 0x7f09087a

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeItemByLink(Ljava/lang/String;)Lcom/mcdonalds/app/home/HomeListItem;
    .locals 4
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    const-string v1, "getHomeItemByLink"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getHomeListItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/HomeListItem;

    .line 971
    .local v0, "item":Lcom/mcdonalds/app/home/HomeListItem;
    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 976
    .end local v0    # "item":Lcom/mcdonalds/app/home/HomeListItem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0xc

    const-string v2, "getTitle"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mFirstNameGreeting:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090767

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mFirstNameGreeting:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 480
    :goto_0
    return-object v2

    .line 472
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 473
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 474
    .local v1, "hour":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    if-ge v1, v4, :cond_1

    .line 475
    const v2, 0x7f0907d6

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 476
    :cond_1
    if-lt v1, v4, :cond_2

    const/16 v2, 0x12

    if-ge v1, v2, :cond_2

    .line 477
    const v2, 0x7f0907cc

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 480
    :cond_2
    const v2, 0x7f0907d3

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 460
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v0

    const-string v1, "NOTIFICATION_FINISH_TUTORIAL"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNeedsRefresh:Z

    .line 463
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 197
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 198
    const/16 v4, 0x56d

    if-eq p1, v4, :cond_0

    const/16 v4, 0x146

    if-ne p1, v4, :cond_2

    .line 199
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/util/ServiceUtils;->removeOffersCache()V

    .line 200
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNeedsRefresh:Z

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    const/16 v4, 0x4c7

    if-ne p1, v4, :cond_5

    .line 203
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->hasCatalogDownloaded(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f090662

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 206
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mCatalogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "GO_TO_PRODUCT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 210
    .local v2, "goToProduct":Z
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PRODUCT_RECIPE_ID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "productId":Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 212
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->newPromoWorkflowForProduct(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "GO_TO_MENU_LINK"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 214
    const-class v4, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "GO_TO_MENU_LINK"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    .end local v2    # "goToProduct":Z
    .end local v3    # "productId":Ljava/lang/String;
    :cond_5
    const/16 v4, 0x69a

    if-ne p1, v4, :cond_6

    .line 219
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PASS_THROUGH_ARGS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 222
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "LAST_ORDER_FRAGMENT_NAME"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "fragmentName":Ljava/lang/String;
    const-class v4, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;

    invoke-virtual {p0, v4, v1, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 224
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "fragmentName":Ljava/lang/String;
    :cond_6
    const/16 v4, 0x69b

    if-ne p1, v4, :cond_1

    .line 225
    const-string v4, "msa_logged_in"

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->showFragment(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onAlertClicked()V
    .locals 8

    .prologue
    const-string v3, "onAlertClicked"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1705
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1706
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->stopRefresh()V

    .line 1707
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$31;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$31;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1725
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 1726
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    if-eqz v0, :cond_0

    .line 1727
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1728
    .local v1, "mCustomerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    .line 1729
    .local v2, "mProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v2, :cond_0

    .line 1730
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1731
    :cond_2
    const-class v3, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    sget-object v4, Lcom/mcdonalds/app/account/ChangeMobileFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 1733
    :cond_3
    const-class v3, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    sget-object v4, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 262
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 263
    return-void
.end method

.method public onClickPromoLink(Ljava/lang/String;)V
    .locals 8
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    const-string v3, "onClickPromoLink"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    const-string v3, "mcdmobileapp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 908
    .local v2, "isInternal":Z
    if-eqz v2, :cond_2

    .line 910
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getHomeItemByLink(Ljava/lang/String;)Lcom/mcdonalds/app/home/HomeListItem;

    move-result-object v0

    .line 911
    .local v0, "homeItem":Lcom/mcdonalds/app/home/HomeListItem;
    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onHomeListItemClicked(Lcom/mcdonalds/app/home/HomeListItem;)V

    .line 932
    .end local v0    # "homeItem":Lcom/mcdonalds/app/home/HomeListItem;
    :goto_0
    return-void

    .line 914
    .restart local v0    # "homeItem":Lcom/mcdonalds/app/home/HomeListItem;
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 915
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->stopRefresh()V

    .line 916
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$12;

    invoke-direct {v4, p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$12;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 923
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->openSelfUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 929
    .end local v0    # "homeItem":Lcom/mcdonalds/app/home/HomeListItem;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 930
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClickPromoProduct(Ljava/lang/String;)V
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const-string v0, "onClickPromoProduct"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0903ed

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 898
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mRecipeLoadedListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mQueuedRecipeId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 375
    invoke-static {}, Lcom/mcdonalds/app/storelocator/StoresManager;->getInstance()Lcom/mcdonalds/app/storelocator/StoresManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/StoresManager;->refreshFavorites()V

    .line 376
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getInstance(Landroid/content/Context;)Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .line 377
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.dashboard.useMySurprises"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mIsMySurprises:Z

    .line 379
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->loadNutritionModule()V

    .line 381
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.dashboard.newPromoWorkflow"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "GO_TO_OFFER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 384
    .local v0, "goToOffer":Z
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_offer"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "offerId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "GO_TO_PRODUCT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 386
    .local v1, "goToProduct":Z
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PRODUCT_RECIPE_ID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "productId":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 388
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->newPromoWorkflowForOffer(Ljava/lang/String;)V

    .line 394
    .end local v0    # "goToOffer":Z
    .end local v1    # "goToProduct":Z
    .end local v2    # "offerId":Ljava/lang/String;
    .end local v3    # "productId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 389
    .restart local v0    # "goToOffer":Z
    .restart local v1    # "goToProduct":Z
    .restart local v2    # "offerId":Ljava/lang/String;
    .restart local v3    # "productId":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 390
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->newPromoWorkflowForProduct(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 399
    const v0, 0x7f0400ab

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 401
    .local v7, "rootView":Landroid/view/View;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.offers.showCurrentRestaurantOffersByDefault"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    .line 403
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->updateOffersTabSelectionState()V

    .line 405
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getOfferCount()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferCount:I

    .line 406
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mResources:Landroid/content/res/Resources;

    .line 408
    new-instance v0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0905d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8, v8}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOffersSectionFavoriteHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    .line 409
    new-instance v0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0905d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8, v8}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOffersSectionFurtherAwayHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    .line 411
    new-instance v0, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    iget-boolean v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mIsMySurprises:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0907e4

    .line 412
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    :goto_0
    const v2, 0x7f02012e

    const/4 v3, 0x1

    const v4, 0x106000b

    const v5, 0x7f0e0063

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;-><init>(Ljava/lang/String;IZII)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mOfferSectionHeaderModel:Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    .line 420
    const v0, 0x7f110296

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 421
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$4;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$4;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 430
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils;->setDefaultRefreshColors(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 432
    const v0, 0x7f110297

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    .line 433
    .local v6, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-direct {p0, v6}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->initializeRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 435
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$5;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 447
    const v0, 0x7f0401a1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mHeaderView:Landroid/view/View;

    .line 448
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f110538

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/HeaderViewPager;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    .line 449
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->setDashboardListener(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)V

    .line 451
    return-object v7

    .line 412
    .end local v6    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0907e3

    .line 413
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 366
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 367
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 368
    return-void
.end method

.method public onDismissAlertClicked()V
    .locals 4

    .prologue
    const-string v1, "onDismissAlertClicked"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1696
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1697
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "email_verification_alert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1699
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeAlertView()V

    .line 1700
    return-void
.end method

.method public onGridItemClick(Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 3
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const-string v0, "onGridItemClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1497
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1498
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    const-class v0, Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    .line 1505
    :goto_0
    return-void

    .line 1504
    :cond_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onOfferItemClicked(Lcom/mcdonalds/sdk/modules/models/Offer;)V

    goto :goto_0
.end method

.method public onHomeListItemClicked(Lcom/mcdonalds/app/home/HomeListItem;)V
    .locals 4
    .param p1, "item"    # Lcom/mcdonalds/app/home/HomeListItem;

    .prologue
    const-string v0, "onHomeListItemClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1182
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->stopRefresh()V

    .line 1184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$19;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$19;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/app/home/HomeListItem;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1193
    :goto_0
    return-void

    .line 1191
    :cond_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->checkIfDuplicateOrderAlertEnabled(Lcom/mcdonalds/app/home/HomeListItem;)V

    goto :goto_0
.end method

.method public onListItemClick(Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 3
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const-string v0, "onListItemClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1485
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1486
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    const-class v0, Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    .line 1493
    :goto_0
    return-void

    .line 1492
    :cond_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onOfferItemClicked(Lcom/mcdonalds/sdk/modules/models/Offer;)V

    goto :goto_0
.end method

.method public onOffersTypeSelectorChanged(Landroid/widget/RadioGroup;)V
    .locals 4
    .param p1, "offersSelector"    # Landroid/widget/RadioGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onOffersTypeSelectorChanged"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 1663
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 1665
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1690
    :goto_0
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->checkAndDisplayOffers(Z)V

    .line 1691
    const-string v0, "offer_view_all"

    invoke-static {v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;)V

    .line 1692
    return-void

    .line 1667
    :pswitch_1
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    .line 1668
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    .line 1669
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPickUpOffers:Z

    .line 1670
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "SelectedRestaurantTabPressed"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logButtonClick(Ljava/lang/String;)V

    goto :goto_0

    .line 1673
    :pswitch_2
    iput-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    .line 1674
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    .line 1675
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPickUpOffers:Z

    .line 1676
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "NearYouTabPressed"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logButtonClick(Ljava/lang/String;)V

    goto :goto_0

    .line 1679
    :pswitch_3
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    .line 1680
    iput-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    .line 1681
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPickUpOffers:Z

    goto :goto_0

    .line 1684
    :pswitch_4
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    .line 1685
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    .line 1686
    iput-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPickUpOffers:Z

    goto :goto_0

    .line 1665
    nop

    :pswitch_data_0
    .packed-switch 0x7f1104aa
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 555
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onPause()V

    .line 556
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->onPause()V

    .line 557
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mCatalogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 558
    return-void
.end method

.method public onRegisterClick()V
    .locals 6

    .prologue
    const-string v1, "onRegisterClick"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1564
    .local v0, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "EVENT_NAME"

    const-string v2, "register"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    const-string v1, "click"

    const-string v2, "\u70b9\u51fb\u6ce8\u518c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start Registration"

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1569
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->stopRefresh()V

    .line 1571
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$28;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$28;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1588
    :goto_0
    return-void

    .line 1582
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isGmaLiteFlow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1583
    const-class v1, Lcom/mcdonalds/app/customer/TermsOfServiceActivity;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 1585
    :cond_1
    const-class v1, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpActivity;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public onRemoveFromBasketClicked(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 3
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const-string v0, "onRemoveFromBasketClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1645
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$30;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$30;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->removeOfferFromOrder(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1658
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 491
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 493
    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPromoPager:Lcom/mcdonalds/app/widget/HeaderViewPager;

    invoke-virtual {v7}, Lcom/mcdonalds/app/widget/HeaderViewPager;->onResume()V

    .line 495
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 496
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 498
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 501
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    .line 503
    .local v3, "manager":Lcom/mcdonalds/app/ordering/OrderingManager;
    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v7}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isLoggedIn()Z

    move-result v7

    iget-boolean v8, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mCurrentLoginState:Z

    if-ne v7, v8, :cond_1

    .line 504
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->isOrderingAvailable()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 506
    :cond_1
    iput-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNeedsRefresh:Z

    .line 521
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "show_email_changed_message"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 522
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "show_email_changed_message"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f090204

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0901e4

    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v9}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 526
    :cond_3
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPushOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v6, :cond_4

    .line 527
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPushOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->isExpired()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 528
    const-class v6, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertActivity;

    sget-object v7, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 539
    :goto_1
    iput-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPushOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 541
    :cond_4
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldFilterStoreResultsUsingGeneralStatus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 542
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->checkIfCurrentStoreIsOpen()V

    .line 545
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 547
    iget-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNeedsRefresh:Z

    if-eqz v6, :cond_6

    .line 548
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->refresh()V

    .line 550
    :cond_6
    return-void

    .line 509
    :cond_7
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 510
    .local v1, "arguments":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 512
    const-string v7, "EXTRA_REFRESH_DASHBOARD"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 513
    .local v4, "refresh":Z
    if-eqz v4, :cond_2

    .line 514
    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v7}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isEmailVerified()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v7}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isMobileVerified()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 515
    .local v5, "verified":Z
    :cond_8
    :goto_2
    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    invoke-virtual {v7, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->addAlertItem(Z)V

    .line 516
    const-string v7, "EXTRA_REFRESH_DASHBOARD"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "verified":Z
    :cond_9
    move v5, v6

    .line 514
    goto :goto_2

    .line 530
    .end local v1    # "arguments":Landroid/os/Bundle;
    .end local v4    # "refresh":Z
    :cond_a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 531
    .local v2, "extras":Landroid/os/Bundle;
    const-string v6, "offer_selection_type"

    sget-object v7, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Nearby:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    invoke-virtual {v7}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->ordinal()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string v6, "DATA_PASSER_KEY"

    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPushOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 534
    const-class v6, Lcom/mcdonalds/app/offers/OfferActivity;

    const-string v7, "offer_detail"

    const/16 v8, 0x56d

    invoke-virtual {p0, v6, v7, v2, v8}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_1
.end method

.method public onSelectStoreClicked()V
    .locals 3

    .prologue
    const-string v1, "onSelectStoreClicked"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1741
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1742
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "INIT_AS_DELIVERY"

    iget-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1743
    const-class v1, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/16 v2, 0x4c7

    invoke-virtual {p0, v1, v0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 1744
    return-void
.end method

.method public onSignInClick()V
    .locals 6

    .prologue
    const-string v1, "onSignInClick"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1593
    .local v0, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "EVENT_NAME"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sign In"

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1597
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->stopRefresh()V

    .line 1599
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$29;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$29;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1616
    :goto_0
    return-void

    .line 1610
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isGmaLiteFlow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1611
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->skipSignIn()V

    goto :goto_0

    .line 1613
    :cond_1
    const-class v1, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 269
    iput-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->isRefreshing:Z

    .line 271
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getCustomerFirstName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mFirstNameGreeting:Ljava/lang/String;

    .line 277
    :goto_0
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->populateCurrentLocationSubtitle()V

    .line 281
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isGmaLiteFlow()Z

    move-result v1

    if-nez v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getCurrentStoreId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.skipFirstLoadAddressSelection"

    .line 285
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 288
    const-class v1, Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    .line 289
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 311
    :cond_0
    :goto_1
    return-void

    .line 274
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mFirstNameGreeting:Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "REFRESH_LAST_ORDER"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 295
    iput-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNeedsRefresh:Z

    .line 304
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->updateOffersTabSelectionState()V

    .line 306
    iget-boolean v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNeedsRefresh:Z

    if-nez v1, :cond_0

    .line 307
    iget-boolean v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNearbyOffers:Z

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAdapter:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    iget-boolean v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mDeliveryOffers:Z

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->setOfferTabSelection(Z)V

    goto :goto_1

    .line 297
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 299
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    :cond_5
    iput-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mNeedsRefresh:Z

    goto :goto_2
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 360
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 361
    return-void
.end method

.method public populateScheduledOrders()V
    .locals 2

    .prologue
    const-string v0, "populateScheduledOrders"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1106
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mViewModel:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$16;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$16;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->loadScheduledOrders(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1120
    :cond_0
    return-void
.end method

.method public setPushOffer(Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 3
    .param p1, "pushOffer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const-string v0, "setPushOffer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mPushOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 603
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "stopRefresh"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/AsyncCounter;->hasActiveProcesses()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/AsyncCounter;->error(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0
.end method
