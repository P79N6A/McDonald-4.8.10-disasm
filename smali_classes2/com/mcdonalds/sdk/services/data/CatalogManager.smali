.class public Lcom/mcdonalds/sdk/services/data/CatalogManager;
.super Ljava/lang/Object;
.source "CatalogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;,
        Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;
    }
.end annotation


# static fields
.field public static final CACHE_CATALOG_EXPIRATION:Ljava/lang/String; = "catalog_expiration"

.field public static final CACHE_MARKET_CATALOG:Ljava/lang/String; = "cache_market_catalog"

.field private static final CATALOG_COMPLETED_FLAG:Ljava/lang/String; = "catalog_completed"

.field public static final CATALOG_INFO:Ljava/lang/String; = "catalog_info-9"

.field public static final CONFIG_CATALOG_EXPIRATION_TIME:Ljava/lang/String; = "catalogExpirationTime"

.field private static final CUSTOMER_CONNECTOR_KEY:Ljava/lang/String; = "modules.customer.connector"

.field public static final FIRST_CATALOG_LOAD:Ljava/lang/String; = "first_catalog_load"

.field private static final MAX_STORE_CACHE_SIZE_KEY:Ljava/lang/String; = "modules.customer.maxStoreCacheSize"

.field private static final STORE_PRODUCT_PERF_FIX:Ljava/lang/String; = "Catalog.storeProductPerfFix"

.field private static SYNC_STATUS:I = 0x0

.field public static final SYNC_STATUS_ERROR:I = 0x2

.field public static final SYNC_STATUS_IDLE:I = 0x1

.field public static final SYNC_STATUS_IN_PROGRESS:I = 0x0

.field public static final VERSION_0:Ljava/lang/String; = "0001-01-01T00:00:00"


# instance fields
.field private mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

.field private mContext:Landroid/content/Context;

.field private mDimensions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation
.end field

.field private mIngredients:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private mPods:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Pod;",
            ">;"
        }
    .end annotation
.end field

.field private mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    sput v0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->SYNC_STATUS:I

    return-void
.end method

.method private constructor <init>(Lcom/mcdonalds/sdk/modules/models/Catalog;Landroid/content/Context;)V
    .locals 1
    .param p1, "catalog"    # Lcom/mcdonalds/sdk/modules/models/Catalog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    .line 181
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mPods:Ljava/util/HashSet;

    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mDimensions:Ljava/util/HashSet;

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mIngredients:Ljava/util/HashSet;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/sdk/modules/models/Catalog;Landroid/content/Context;Lcom/mcdonalds/sdk/services/data/CatalogManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/sdk/modules/models/Catalog;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$1;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/services/data/CatalogManager;-><init>(Lcom/mcdonalds/sdk/modules/models/Catalog;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/services/data/CatalogManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->persist()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/services/data/CatalogManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->updateStatus(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mcdonalds/sdk/services/data/CatalogManager;Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->asyncPersist(Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;)V

    return-void
.end method

.method private asyncPersist(Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;

    .prologue
    .line 189
    new-instance v0, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;-><init>(Lcom/mcdonalds/sdk/services/data/CatalogManager;Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 207
    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private cacheCatalogVersions()V
    .locals 14

    .prologue
    .line 445
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getConfigName()Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "marketName":Ljava/lang/String;
    iget-object v11, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    if-eqz v11, :cond_a

    .line 448
    iget-object v11, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Catalog;->getMarketCatalog()Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    move-result-object v5

    .line 453
    .local v5, "market":Lcom/mcdonalds/sdk/modules/models/MarketCatalog;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getNamesVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 455
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Names:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getNamesVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getRecipesVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 461
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Recipes:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getRecipesVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_1
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getCategoriesVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 467
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->DisplayCategory:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getCategoriesVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_2
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getPaymentMethodsVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 473
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->PaymentMethod:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getPaymentMethodsVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_3
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getPromotionsVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 479
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Promotion:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getPromotionsVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_4
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getFeedBackTypesVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 485
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->FeedbackTypeName:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getFeedBackTypesVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_5
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getTenderTypesVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 491
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->TenderType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getTenderTypesVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_6
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getMenuTypesVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 497
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->MenuType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getMenuTypesVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_7
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getSocialNetworksVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 503
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->SocialMedia:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getSocialNetworksVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_8
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->StaticData:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getCategoriesVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Language:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getCategoriesVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v11, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Catalog;->getStoreCatalog()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Catalog;->getStoreCatalog()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_b

    iget-object v11, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    .line 515
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Catalog;->getStoreCatalog()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    move-object v7, v11

    .line 517
    .local v7, "store":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    :goto_0
    if-eqz v7, :cond_9

    .line 518
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getStoreId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 519
    .local v10, "storeId":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getStoreId()I

    move-result v11

    invoke-static {v11}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getStoreVersionsCacheKey(I)Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, "key":Ljava/lang/String;
    iget-object v11, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 521
    .local v8, "storeCache":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 525
    .local v9, "storeCacheEditor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Products:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getProductsVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v10, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setStoreCatalogVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    sget-object v12, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->ProductPrices:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getProductPricesVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v10, v12, v13}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setStoreCatalogVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setStoreCatalogDownloaded(Ljava/lang/String;Z)V

    .line 534
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getProductsVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getProductPricesVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 535
    const-string v11, "catalog_completed"

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 539
    :goto_1
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 541
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getStoreId()I

    move-result v11

    iget-object v12, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->checkStoreCache(ILandroid/content/Context;)V

    .line 546
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "storeCache":Landroid/content/SharedPreferences;
    .end local v9    # "storeCacheEditor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "storeId":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    const-string v12, "catalog_expiration"

    invoke-virtual {v11, v12}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->hasObjectInCache(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 547
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    const-string v12, "catalogExpirationTime"

    invoke-virtual {v11, v12}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLongForKey(Ljava/lang/String;)J

    move-result-wide v2

    .line 548
    .local v2, "catalogExpirationTimeInHours":J
    sget-object v11, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 549
    .local v0, "catalogExpirationTime":J
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v11

    const-string v12, "catalog_expiration"

    const-string v13, "catalog_expiration"

    invoke-virtual {v11, v12, v13, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 552
    .end local v0    # "catalogExpirationTime":J
    .end local v2    # "catalogExpirationTimeInHours":J
    .end local v5    # "market":Lcom/mcdonalds/sdk/modules/models/MarketCatalog;
    .end local v7    # "store":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    :cond_a
    return-void

    .line 515
    .restart local v5    # "market":Lcom/mcdonalds/sdk/modules/models/MarketCatalog;
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 537
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v7    # "store":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    .restart local v8    # "storeCache":Landroid/content/SharedPreferences;
    .restart local v9    # "storeCacheEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v10    # "storeId":Ljava/lang/String;
    :cond_c
    const-string v11, "catalog_completed"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static checkStoreCache(ILandroid/content/Context;)V
    .locals 14
    .param p0, "storeId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x0

    .line 712
    const-string v11, "Stores"

    invoke-virtual {p1, v11, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 713
    .local v7, "storePreferences":Landroid/content/SharedPreferences;
    const-string v11, "stores"

    const-string v12, ""

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 714
    .local v8, "stores":Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v11, ","

    invoke-direct {v6, v8, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    const-string v12, "modules.customer.maxStoreCacheSize"

    invoke-virtual {v11, v12}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 716
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    const-string v12, "modules.customer.maxStoreCacheSize"

    invoke-virtual {v11, v12}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v0

    .line 720
    .local v0, "MAX_STORES":I
    :goto_0
    new-array v5, v0, [I

    .line 721
    .local v5, "savedList":[I
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v10

    .line 722
    .local v10, "tokenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v10, :cond_1

    .line 723
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v2

    .line 722
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 716
    .end local v0    # "MAX_STORES":I
    .end local v2    # "i":I
    .end local v5    # "savedList":[I
    .end local v10    # "tokenCount":I
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 726
    .restart local v0    # "MAX_STORES":I
    .restart local v2    # "i":I
    .restart local v5    # "savedList":[I
    .restart local v10    # "tokenCount":I
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .local v9, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const/4 v1, 0x1

    .line 729
    .local v1, "count":I
    const/4 v4, -0x1

    .line 731
    .local v4, "removeStoreId":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_4

    .line 732
    aget v11, v5, v2

    if-eq p0, v11, :cond_3

    if-ge v1, v0, :cond_3

    .line 733
    aget v11, v5, v2

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    add-int/lit8 v1, v1, 0x1

    .line 731
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 735
    :cond_3
    aget v11, v5, v2

    if-eq p0, v11, :cond_2

    .line 736
    aget v4, v5, v2

    goto :goto_3

    .line 740
    :cond_4
    const/4 v11, -0x1

    if-eq v4, v11, :cond_5

    .line 741
    invoke-static {p1, v4}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->markStoreCatalogDirty(Landroid/content/Context;I)V

    .line 742
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getStoreVersionsCacheKey(I)Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 744
    invoke-static {p1, v4}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->cleanStoreProducts(Landroid/content/Context;I)V

    .line 745
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->cleanOrphanedProducts(Landroid/content/Context;)V

    .line 747
    .end local v3    # "key":Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "stores"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 748
    return-void
.end method

.method public static clearAllCatalogData(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 582
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;-><init>(Landroid/content/Context;)V

    .line 584
    .local v0, "transaction":Lcom/mcdonalds/sdk/services/data/database/Transaction;
    :try_start_0
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->clearAllData()V

    .line 585
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->finish()V

    .line 591
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->setFirstCatalogLoad(Landroid/content/Context;Z)V

    .line 592
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setLastActive(J)V

    .line 593
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->clearCatalogPreference()V

    .line 594
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-string v2, "cache_market_catalog"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 595
    return-void

    .line 587
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->finish()V

    throw v1
.end method

.method public static clearMarketCache(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 766
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getConfigName()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "marketName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 768
    return-void
.end method

.method public static clearStoreCache(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 751
    const-string v7, "Stores"

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 752
    .local v4, "storePreferences":Landroid/content/SharedPreferences;
    const-string v7, "stores"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, "stores":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v2, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 756
    .local v6, "tokenCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 757
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 758
    .local v3, "storeID":I
    invoke-static {p0, v3}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->markStoreCatalogDirty(Landroid/content/Context;I)V

    .line 759
    invoke-static {v3}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getStoreVersionsCacheKey(I)Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 761
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "storeID":I
    :cond_0
    return-void
.end method

.method public static getStoreVersionsCacheKey(I)Ljava/lang/String;
    .locals 4
    .param p0, "storeId"    # I

    .prologue
    .line 115
    const-string v0, "%s-%d-%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getConfigName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSyncStatus()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->SYNC_STATUS:I

    return v0
.end method

.method public static hasCatalogDownloaded(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 98
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "storeId":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isStoreCatalogDownloaded(Ljava/lang/String;)Z

    move-result v2

    .line 104
    .end local v1    # "storeId":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasCatalogDownloaded(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeId"    # I

    .prologue
    const/4 v2, 0x0

    .line 108
    .line 109
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getStoreVersionsCacheKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, "storeCache":Landroid/content/SharedPreferences;
    const-string v1, "catalog_completed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static hasMarketCatalogDownloaded(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "cache_market_catalog"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->hasObjectInCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFirstCatalogLoad(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 570
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isFirstCatalogLoad()Z

    move-result v0

    return v0
.end method

.method public static markMarketCatalogDirty(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-string v2, "cache_market_catalog"

    .line 120
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 121
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getConfigName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "marketName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    return-void
.end method

.method public static markStoreCatalogDirty(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeId"    # I

    .prologue
    .line 132
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getStoreVersionsCacheKey(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "catalog_completed"

    .line 134
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 135
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->cleanStoreCatalogTimestamps(I)V

    .line 137
    return-void
.end method

.method private declared-synchronized persist()V
    .locals 10

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    if-nez v5, :cond_1

    .line 213
    const-string v5, "catalog"

    const-string v6, "mCatalog==null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Catalog;->getMarketCatalog()Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    move-result-object v1

    .line 223
    .local v1, "marketCatalog":Lcom/mcdonalds/sdk/modules/models/MarketCatalog;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Catalog;->getStoreCatalog()Ljava/util/List;

    move-result-object v3

    .line 226
    .local v3, "storeCatalogs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->isEmptyCatalog()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 228
    :cond_2
    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->setStoreCatalogDownloaded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    .end local v1    # "marketCatalog":Lcom/mcdonalds/sdk/modules/models/MarketCatalog;
    .end local v3    # "storeCatalogs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 239
    .restart local v1    # "marketCatalog":Lcom/mcdonalds/sdk/modules/models/MarketCatalog;
    .restart local v3    # "storeCatalogs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    .line 240
    .local v2, "storeCatalog":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    iget-object v6, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getStoreId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->cleanStoreProducts(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 244
    .end local v2    # "storeCatalog":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    :cond_4
    :try_start_3
    new-instance v5, Lcom/mcdonalds/sdk/services/data/database/Transaction;

    iget-object v6, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    .line 246
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getCategories()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 249
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getFacilities()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 252
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getMenuTypes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 255
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getPaymentMethods()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 258
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getFeedBackTypes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v4, "storesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    .line 263
    .restart local v2    # "storeCatalog":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->persistStoreData(Lcom/mcdonalds/sdk/modules/models/StoreCatalog;)Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 277
    .end local v2    # "storeCatalog":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    .end local v4    # "storesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->updateStatus(Landroid/content/Context;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 280
    :try_start_5
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->finish()V

    .line 282
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->cacheCatalogVersions()V

    .line 284
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->cleanOrphanedProducts(Landroid/content/Context;)V

    .line 286
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->updateStatus(Landroid/content/Context;I)V

    .line 289
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mcdonalds/sdk/services/data/provider/Contract$SocialNetworks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 290
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 265
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v4    # "storesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    :cond_5
    :try_start_6
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v5, v4}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 268
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getPromotions()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 271
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getTenderTypes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 274
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->getSocialNetworks()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 276
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->commit()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 280
    :try_start_7
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->finish()V

    .line 282
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->cacheCatalogVersions()V

    .line 284
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->cleanOrphanedProducts(Landroid/content/Context;)V

    .line 286
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->updateStatus(Landroid/content/Context;I)V

    .line 289
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mcdonalds/sdk/services/data/provider/Contract$SocialNetworks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 290
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 280
    .end local v4    # "storesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->finish()V

    .line 282
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->cacheCatalogVersions()V

    .line 284
    iget-object v6, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->cleanOrphanedProducts(Landroid/content/Context;)V

    .line 286
    iget-object v6, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->updateStatus(Landroid/content/Context;I)V

    .line 289
    iget-object v6, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/mcdonalds/sdk/services/data/provider/Contract$SocialNetworks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 290
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private persistRecipe(Lcom/mcdonalds/sdk/modules/models/Product;I)V
    .locals 10
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "storeId"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 347
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 348
    .local v2, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setProductId(I)V

    .line 349
    invoke-virtual {v2, p2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setStoreId(I)V

    .line 350
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceEatIn()D

    move-result-wide v6

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceEatIn()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setPriceEatIn(D)V

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceTakeOut()D

    move-result-wide v6

    cmpl-double v5, v6, v8

    if-lez v5, :cond_1

    .line 354
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceTakeOut()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setPriceTakeOut(D)V

    .line 356
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceDelivery()D

    move-result-wide v6

    cmpl-double v5, v6, v8

    if-lez v5, :cond_2

    .line 357
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceDelivery()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setPriceDelivery(D)V

    .line 359
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getEnergy()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v5, v6, v8

    if-lez v5, :cond_3

    .line 360
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getEnergy()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setEnergy(Ljava/lang/Double;)V

    .line 361
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getKCal()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setKCal(D)V

    .line 364
    :cond_3
    sget-object v5, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 365
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceEatIn()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setBasePriceEatIn(D)V

    .line 366
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceTakeOut()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setBasePriceTakeOut(D)V

    .line 367
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceDelivery()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setBasePriceDelivery(D)V

    .line 371
    :cond_4
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getCategories()Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    if-eqz v0, :cond_6

    .line 373
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v3, "storeProductCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 376
    .local v1, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;-><init>()V

    .line 377
    .local v4, "storeProductCategory":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getProductId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->setProductId(I)V

    .line 378
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getStoreId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->setStoreId(I)V

    .line 379
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Category;->getID()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->setCategoryId(I)V

    .line 380
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Category;->getDisplayOrder()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->setDisplayOrder(I)V

    .line 381
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Category;->getDisplaySizeSelection()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->setDisplaySizeSelection(I)V

    .line 382
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    .end local v1    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v4    # "storeProductCategory":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    :cond_5
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setStoreProductCategories(Ljava/util/List;)V

    .line 389
    .end local v3    # "storeProductCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    :cond_6
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getMenuTypes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setMenuTypes(Ljava/util/List;)V

    .line 390
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODObjects()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setPODs(Ljava/util/List;)V

    .line 391
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getDimensions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setDimensions(Ljava/util/List;)V

    .line 392
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setIngredients(Ljava/util/List;)V

    .line 393
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setChoices(Ljava/util/List;)V

    .line 394
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setExtras(Ljava/util/List;)V

    .line 395
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->hasChoice()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setHasChoice(Ljava/lang/Boolean;)V

    .line 396
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->hasNonSingleChoiceChoice()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setHasNonSingleChoiceChoice(Ljava/lang/Boolean;)V

    .line 397
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->isSingleChoice()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setSingleChoice(Ljava/lang/Boolean;)V

    .line 398
    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->setStoreProduct(Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V

    .line 400
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODObjects()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 401
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mPods:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODObjects()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 404
    :cond_7
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getDimensions()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 405
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mDimensions:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getDimensions()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 409
    :cond_8
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 410
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mIngredients:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 414
    :cond_9
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 415
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mIngredients:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 419
    :cond_a
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 420
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mIngredients:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 422
    :cond_b
    return-void
.end method

.method private persistStoreData(Lcom/mcdonalds/sdk/modules/models/StoreCatalog;)Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    .locals 12
    .param p1, "storeCatalog"    # Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    .prologue
    const/4 v11, 0x0

    .line 299
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getFacilities()Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, "facilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    if-eqz v0, :cond_0

    .line 301
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v9, v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getProducts()Ljava/util/List;

    move-result-object v3

    .line 306
    .local v3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    if-eqz v3, :cond_3

    .line 307
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v4, "productsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v8, "storeProductsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProduct;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v7, "storeProductCategoriesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 311
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 312
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getStoreId()I

    move-result v9

    invoke-direct {p0, v2, v9}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->persistRecipe(Lcom/mcdonalds/sdk/modules/models/Product;I)V

    .line 313
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v6

    .line 315
    .local v6, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getStoreProductCategories()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 317
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getStoreProductCategories()Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v6    # "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    :cond_2
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v9, v4}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 321
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "Catalog.storeProductPerfFix"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 322
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v9, v8, v11}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insertFast(Ljava/util/Collection;Z)V

    .line 326
    :goto_1
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v9, v7, v11}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;Z)V

    .line 327
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    iget-object v10, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mPods:Ljava/util/HashSet;

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 328
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    iget-object v10, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mDimensions:Ljava/util/HashSet;

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 329
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    iget-object v10, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mIngredients:Ljava/util/HashSet;

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 336
    .end local v1    # "i":I
    .end local v4    # "productsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    .end local v7    # "storeProductCategoriesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    .end local v8    # "storeProductsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProduct;>;"
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getPromotions()Ljava/util/List;

    move-result-object v5

    .line 337
    .local v5, "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Promotion;>;"
    if-eqz v5, :cond_4

    .line 338
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v9, v5}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 341
    :cond_4
    return-object p1

    .line 324
    .end local v5    # "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Promotion;>;"
    .restart local v1    # "i":I
    .restart local v4    # "productsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    .restart local v7    # "storeProductCategoriesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    .restart local v8    # "storeProductsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProduct;>;"
    :cond_5
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mTransaction:Lcom/mcdonalds/sdk/services/data/database/Transaction;

    invoke-virtual {v9, v8, v11}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;Z)V

    goto :goto_1
.end method

.method public static reloadCatalog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 556
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->clearAllCatalogData(Landroid/content/Context;)V

    .line 558
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 559
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    const/4 v1, 0x0

    .line 560
    .local v1, "storeId":I
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    .line 563
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->updateCatalog(ILandroid/content/Context;Z)V

    .line 564
    return-void
.end method

.method public static requestSocialNetworkSync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 164
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v1, "settingsBundle":Landroid/os/Bundle;
    const-string v2, "force"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    const-string v2, "expedited"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const-string v2, "sync_option_social_network"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 176
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSyncAccount()Landroid/accounts/Account;

    move-result-object v2

    const-string v3, "com.mcdonalds.gma.hongkong.provider"

    invoke-static {v2, v3, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public static requestSync()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v1, "settingsBundle":Landroid/os/Bundle;
    const-string v3, "force"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    const-string v3, "expedited"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 150
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuTypeCalendar()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    const-string v3, "sync_option_store_info_required"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    :cond_0
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 160
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSyncAccount()Landroid/accounts/Account;

    move-result-object v3

    const-string v4, "com.mcdonalds.gma.hongkong.provider"

    invoke-static {v3, v4, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public static setFirstCatalogLoad(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Z

    .prologue
    .line 578
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setFirstCatalogLoad(Z)V

    .line 579
    return-void
.end method

.method private setStoreCatalogDownloaded()V
    .locals 5

    .prologue
    .line 425
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Catalog;->getStoreCatalog()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Catalog;->getStoreCatalog()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    .line 426
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Catalog;->getStoreCatalog()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    move-object v0, v2

    .line 428
    .local v0, "store":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    :goto_0
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "storeId":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setStoreCatalogDownloaded(Ljava/lang/String;Z)V

    .line 439
    const-string v2, "catalog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "store: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " downloaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v1    # "storeId":Ljava/lang/String;
    :cond_0
    return-void

    .line 426
    .end local v0    # "store":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateCatalog(ILandroid/content/Context;Z)V
    .locals 1
    .param p0, "storeId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isStoreIdRequired"    # Z

    .prologue
    .line 82
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "customer"

    .line 83
    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x1

    sput v0, Lcom/mcdonalds/sdk/services/data/CatalogManager;->SYNC_STATUS:I

    .line 89
    new-instance v0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    invoke-direct {v0, p1, p0, p2}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->execute()V

    goto :goto_0
.end method

.method private static updateStatus(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 702
    sput p1, Lcom/mcdonalds/sdk/services/data/CatalogManager;->SYNC_STATUS:I

    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 704
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 705
    return-void
.end method
