.class Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;
.super Ljava/lang/Object;
.source "CatalogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/CatalogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonBlockingCatalogUpdater"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

.field private mIsStoreInfoRequired:Z

.field private mStoreID:I

.field private mUserName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storeId"    # I
    .param p3, "isStoreInfoRequired"    # Z

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mContext:Landroid/content/Context;

    .line 606
    iput p2, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mStoreID:I

    .line 607
    iput-boolean p3, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mIsStoreInfoRequired:Z

    .line 608
    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->finishExecute()V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    .prologue
    .line 597
    iget v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mStoreID:I

    return v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 597
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->persistAdvertisablePromotions(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->updateAdvertisablePromotions()V

    return-void
.end method

.method private finishExecute()V
    .locals 4

    .prologue
    .line 676
    iget v1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mStoreID:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mStoreID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "storeIdString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mUserName:Ljava/lang/String;

    new-instance v3, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;-><init>(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/mcdonalds/sdk/connectors/CustomerConnector;->getCatalogUpdated(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 698
    return-void

    .line 676
    .end local v0    # "storeIdString":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistAdvertisablePromotions(ILjava/util/List;)V
    .locals 2
    .param p1, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p2, "advertisablePromotionEntities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;>;"
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mcdonalds/sdk/services/data/repository/AdvertisablePromotionRepository;->cleanAdvertisablePromotionsForStore(Landroid/content/Context;I)V

    .line 666
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/Transaction;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/services/data/database/Transaction;-><init>(Landroid/content/Context;)V

    .line 668
    .local v0, "transaction":Lcom/mcdonalds/sdk/services/data/database/Transaction;
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;)V

    .line 669
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->finish()V

    .line 673
    return-void

    .line 671
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->finish()V

    throw v1
.end method

.method private updateAdvertisablePromotions()V
    .locals 4

    .prologue
    .line 654
    const-string v1, "offers"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 655
    .local v0, "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mUserName:Ljava/lang/String;

    iget v2, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mStoreID:I

    new-instance v3, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$2;-><init>(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->getAdvertisablePromotionEntities(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 661
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    .line 611
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->access$200(Landroid/content/Context;I)V

    .line 613
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    const-string v6, "catalog_expiration"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->hasObjectInCache(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 614
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->clearMarketCache(Landroid/content/Context;)V

    .line 615
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->clearStoreCache(Landroid/content/Context;)V

    .line 616
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    const-string v6, "cache_market_catalog"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 619
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "modules.customer.connector"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 620
    .local v0, "connectorImplementation":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    iput-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mCustomerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    .line 621
    const-string v5, "customer"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 623
    .local v1, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    .line 624
    .local v3, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-nez v3, :cond_3

    const/4 v5, 0x0

    :goto_0
    iput-object v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mUserName:Ljava/lang/String;

    .line 626
    const/4 v2, 0x0

    .line 628
    .local v2, "isDelivery":Z
    iget v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mStoreID:I

    if-nez v5, :cond_4

    .line 629
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    .line 630
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v4, :cond_1

    .line 631
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    iput v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mStoreID:I

    .line 637
    .end local v4    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mIsStoreInfoRequired:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mStoreID:I

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    iget v6, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->mStoreID:I

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getStoreCatalogTimestamps(I)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 638
    :cond_2
    if-nez v2, :cond_5

    .line 639
    new-instance v5, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$1;-><init>(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)V

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCurrentStoreInfo(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 651
    :goto_2
    return-void

    .line 624
    .end local v2    # "isDelivery":Z
    :cond_3
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 634
    .restart local v2    # "isDelivery":Z
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 646
    :cond_5
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->finishExecute()V

    goto :goto_2

    .line 649
    :cond_6
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->finishExecute()V

    goto :goto_2
.end method
