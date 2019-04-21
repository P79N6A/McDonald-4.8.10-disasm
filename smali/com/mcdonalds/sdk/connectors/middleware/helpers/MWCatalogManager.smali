.class public Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
.super Ljava/lang/Object;
.source "MWCatalogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$StoresCatalogRequestListener;,
        Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;
    }
.end annotation


# static fields
.field public static final CACHE_KEY_CATALOGS_UPDATED:Ljava/lang/String; = "CACHE_KEY_CATALOGS_UPDATED"

.field public static final CONFIG_SERIALIZE_MARKET_CATALOG:Ljava/lang/String; = "connectors.Middleware.serializeCachingMarketCatalog"

.field public static final DAY_IN_MILLISECONDS:J

.field public static final ECP_VERSION_KEY:Ljava/lang/String; = "connectors.Middleware.eCPVersion"

.field public static final MARKET_CATALOG_CACHE_EXPIRATION:J

.field private static final MARKET_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MARKET_LAST_UPDATE_KEY:Ljava/lang/String;

.field private mAsyncException:Lcom/mcdonalds/sdk/AsyncException;

.field private mCatalogUpdateInProgress:Z

.field private mConnectorListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Catalog;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectorToken:Lcom/mcdonalds/sdk/AsyncToken;

.field private final mCurrentUpdateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedCatalogUpdateTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchMarketTypes:Z

.field private mFetchStoreTypes:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

.field private mSocialNetworkTypes:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreId:Ljava/lang/Integer;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->MARKET_CATALOG_CACHE_EXPIRATION:J

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->DAY_IN_MILLISECONDS:J

    .line 59
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->DisplayCategory:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Names:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Recipes:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->PaymentMethod:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->StaticData:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Promotion:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Language:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->FeedbackTypeName:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->TenderType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->MenuType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->SocialMedia:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->MARKET_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V
    .locals 2
    .param p1, "shared"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mDelayedTasks:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mDelayedCatalogUpdateTasks:Ljava/util/List;

    .line 79
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCatalogUpdateInProgress:Z

    .line 81
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mFetchMarketTypes:Z

    .line 82
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mFetchStoreTypes:Z

    .line 90
    const-string v0, "market_last_update_key"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->MARKET_LAST_UPDATE_KEY:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSocialNetworkTypes:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    .line 96
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCurrentUpdateTypes:Ljava/util/List;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSocialNetworkTypes:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;)Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSocialNetworkTypes:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCatalogUpdateInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->isMarketCatalogsOutdated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Landroid/content/Context;ILjava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->isStoreCatalogsOutdated(Landroid/content/Context;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->updateCatalogs()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->finishUpdate()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->cacheMarketCatalog(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->updateMarketLastUpdateTimestamp()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Catalog;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->finishMarketUpdate(Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/modules/models/Catalog;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Catalog;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->finishUpdate(Lcom/mcdonalds/sdk/modules/models/Catalog;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/AsyncToken;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncToken;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mConnectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    return-object p1
.end method

.method static synthetic access$402(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mConnectorListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object p1
.end method

.method static synthetic access$502(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/AsyncException;)Lcom/mcdonalds/sdk/AsyncException;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mAsyncException:Lcom/mcdonalds/sdk/AsyncException;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mStoreId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mStoreId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCurrentUpdateTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mFetchMarketTypes:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mFetchStoreTypes:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mFetchStoreTypes:Z

    return p1
.end method

.method private cacheMarketCatalog(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    .locals 7
    .param p1, "marketCatalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .prologue
    .line 408
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "connectors.Middleware.serializeCachingMarketCatalog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v6

    .line 411
    .local v6, "serialize":Z
    invoke-direct {p0, v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->getCachedMarketCatalog(Z)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    move-result-object v0

    .line 412
    .local v0, "cachedMarketCatalog":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    if-nez v0, :cond_0

    .line 414
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-string v2, "cache_market_catalog"

    const-wide/16 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;JZ)V

    .line 435
    .end local p1    # "marketCatalog":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    :goto_0
    return-object p1

    .line 418
    .restart local p1    # "marketCatalog":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    :cond_0
    if-eqz p1, :cond_4

    .line 419
    iget-object v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->recipes:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->recipes:Ljava/util/List;

    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->recipes:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->union(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 423
    :cond_1
    iget-object v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->names:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 424
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->names:Ljava/util/List;

    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->names:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->union(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 427
    :cond_2
    iget-object v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypes:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 428
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypes:Ljava/util/List;

    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypes:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->union(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 431
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-string v2, "cache_market_catalog"

    .line 432
    invoke-virtual {v1, v2, v0, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->updateObjectInCache(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object p1, v0

    .line 433
    goto :goto_0

    .line 435
    :cond_4
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized desiredMarketCatalogTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    const-class v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;>;"
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->DisplayCategory:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnectorUtils;->isUsingECP3()Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Recipes:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Names:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_0
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->PaymentMethod:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->StaticData:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Promotion:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Language:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->FeedbackTypeName:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->TenderType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->MenuType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit v2

    return-object v0

    .line 487
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized desiredStoreCatalogTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    const-class v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const/4 v2, 0x0

    sget-object v3, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Products:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->ProductPrices:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private finishMarketUpdate(Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)V
    .locals 1
    .param p1, "catalog"    # Lcom/mcdonalds/sdk/modules/models/Catalog;
    .param p2, "cachedMarkedCatalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .prologue
    .line 338
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mAsyncException:Lcom/mcdonalds/sdk/AsyncException;

    if-nez v0, :cond_1

    .line 340
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/AsyncException;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mAsyncException:Lcom/mcdonalds/sdk/AsyncException;

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->finishUpdate()V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->performSingleStoreUpdate(Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)V

    goto :goto_0
.end method

.method private finishUpdate()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->finishUpdate(Lcom/mcdonalds/sdk/modules/models/Catalog;)V

    .line 451
    return-void
.end method

.method private finishUpdate(Lcom/mcdonalds/sdk/modules/models/Catalog;)V
    .locals 8
    .param p1, "catalog"    # Lcom/mcdonalds/sdk/modules/models/Catalog;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 457
    iput-boolean v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCatalogUpdateInProgress:Z

    .line 462
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mConnectorListener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mConnectorListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mConnectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mAsyncException:Lcom/mcdonalds/sdk/AsyncException;

    invoke-interface {v3, p1, v4, v5}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 466
    :cond_0
    iput-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mConnectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    .line 467
    iput-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mConnectorListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 470
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mDelayedCatalogUpdateTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 472
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mDelayedCatalogUpdateTasks:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 473
    .local v2, "task":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mDelayedCatalogUpdateTasks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 474
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    .end local v2    # "task":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 477
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mDelayedTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 478
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mDelayedTasks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 479
    .restart local v2    # "task":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    .end local v2    # "task":Ljava/lang/Runnable;
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mDelayedTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private getCachedMarketCatalog(Z)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    .locals 3
    .param p1, "serialize"    # Z

    .prologue
    .line 441
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "cache_market_catalog"

    const-class v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 442
    invoke-virtual {v0, v1, v2, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 441
    return-object v0
.end method

.method private getMarketLastUpdateTimestamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "marketName"    # Ljava/lang/String;

    .prologue
    .line 537
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    .local v0, "preferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->MARKET_LAST_UPDATE_KEY:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private getMarketSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 551
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getConfigName()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "marketName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private hasCachedMarketCatalog(Z)Z
    .locals 2
    .param p1, "serialize"    # Z

    .prologue
    .line 446
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "cache_market_catalog"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->hasObjectInCache(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMarketCatalogsOutdated(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "marketName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 521
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "connectors.Middleware.serializeCachingMarketCatalog"

    .line 522
    invoke-virtual {v9, v10, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v6

    .line 524
    .local v6, "serialize":Z
    invoke-direct {p0, v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->hasCachedMarketCatalog(Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v7

    .line 528
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->getMarketLastUpdateTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 529
    .local v2, "lastUpdated":J
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 530
    .local v4, "now":J
    sub-long v0, v4, v2

    .line 533
    .local v0, "difference":J
    const-wide/32 v10, 0x6ddd00

    cmp-long v9, v0, v10

    if-gtz v9, :cond_0

    move v7, v8

    goto :goto_0
.end method

.method private isStoreCatalogsOutdated(Landroid/content/Context;ILjava/util/List;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "catalogVersionTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;>;"
    const/4 v4, 0x1

    .line 558
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getStoreCatalogTimestamps(I)Ljava/util/List;

    move-result-object v2

    .line 560
    .local v2, "timestamps":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;>;"
    invoke-static {p2, p1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->checkStoreCache(ILandroid/content/Context;)V

    .line 562
    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v4

    .line 566
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 567
    .local v1, "sharedPrefItem":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getStoreCatalogVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "versionTimestamp":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;

    .line 570
    .local v0, "objCacheItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    iget-object v7, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->type:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    if-ne v1, v7, :cond_3

    iget-object v7, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->version:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    .line 576
    .end local v0    # "objCacheItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    .end local v1    # "sharedPrefItem":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    .end local v3    # "versionTimestamp":Ljava/lang/String;
    :cond_4
    invoke-static {p1, p2}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->hasCatalogDownloaded(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 580
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private performSingleMarketUpdate()V
    .locals 9

    .prologue
    .line 282
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;-><init>()V

    .line 284
    .local v2, "queryVersion":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getConfigName()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "marketName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCurrentUpdateTypes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 291
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCurrentUpdateTypes:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 293
    .local v5, "type":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;-><init>()V

    .line 294
    .local v6, "version":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    iput-object v5, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->type:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 296
    sget-object v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->MARKET_TYPES:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 298
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->version:Ljava/lang/String;

    .line 300
    iget-object v7, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;->market:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v5    # "type":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    .end local v6    # "version":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    :cond_1
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCatalogUpdatedRequest;

    .line 306
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mUsername:Ljava/lang/String;

    invoke-direct {v3, v7, v2, v8}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCatalogUpdatedRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;Ljava/lang/String;)V

    .line 309
    .local v3, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCatalogUpdatedRequest;
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$3;

    invoke-direct {v8, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$3;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V

    invoke-virtual {v7, v3, v8}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 334
    return-void
.end method

.method private performSingleStoreUpdate(Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)V
    .locals 9
    .param p1, "parsedMarketCatalog"    # Lcom/mcdonalds/sdk/modules/models/Catalog;
    .param p2, "cachedMarketCatalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .prologue
    .line 349
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mStoreId:Ljava/lang/Integer;

    if-nez v7, :cond_0

    .line 404
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;-><init>()V

    .line 356
    .local v1, "queryVersion":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;
    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;-><init>()V

    .line 357
    .local v4, "storeCatalogVersion":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mStoreId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;->storeId:Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCurrentUpdateTypes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 361
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCurrentUpdateTypes:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 363
    .local v5, "type":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;-><init>()V

    .line 364
    .local v6, "version":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    iput-object v5, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->type:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 366
    sget-object v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->MARKET_TYPES:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 369
    const-string v7, "0001-01-01T00:00:00"

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->version:Ljava/lang/String;

    .line 370
    iget-object v7, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreCatalogVersion;->catalog:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    .end local v5    # "type":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    .end local v6    # "version":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    :cond_2
    iget-object v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;->store:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCatalogUpdatedRequest;

    .line 377
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mUsername:Ljava/lang/String;

    invoke-direct {v2, v7, v1, v8}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCatalogUpdatedRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;Ljava/lang/String;)V

    .line 380
    .local v2, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCatalogUpdatedRequest;
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$4;

    invoke-direct {v8, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$4;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)V

    invoke-virtual {v7, v2, v8}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method private performSingleUpdate()V
    .locals 3

    .prologue
    .line 262
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mFetchMarketTypes:Z

    if-eqz v1, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->performSingleMarketUpdate()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mFetchStoreTypes:Z

    if-eqz v1, :cond_0

    .line 274
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;)V

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;)V

    .line 276
    .local v0, "asyncTask":Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->execute()V

    goto :goto_0
.end method

.method private updateCatalogs()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCurrentUpdateTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "Catalog Manager: SKIPPING update, no catalog types need updating"

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->finishUpdate()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->performSingleUpdate()V

    goto :goto_0
.end method

.method private updateMarketLastUpdateTimestamp()V
    .locals 6

    .prologue
    .line 543
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 544
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->getMarketSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 545
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 546
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->MARKET_LAST_UPDATE_KEY:Ljava/lang/String;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 548
    return-void
.end method


# virtual methods
.method public commonUpdateAllCatalogs(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/String;
    .param p3, "connectorToken"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Catalog;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    .local p4, "connectorListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Catalog;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->updateCatalogs(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 181
    return-void
.end method

.method public updateCatalogs(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/String;
    .param p3, "connectorToken"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Catalog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p4, "connectorListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/Catalog;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;Ljava/lang/String;)V

    .line 244
    .local v0, "task":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mCatalogUpdateInProgress:Z

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mDelayedCatalogUpdateTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateSocialNetworkCatalog(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 10
    .param p1, "connectorToken"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "connectorListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;>;"
    const/4 v9, 0x0

    .line 104
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSocialNetworkTypes:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSocialNetworkTypes:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 111
    .local v0, "fetchFromNetwork":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 113
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;-><init>()V

    .line 114
    .local v6, "version":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;
    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;-><init>()V

    .line 115
    .local v7, "versionItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    sget-object v8, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->SocialMedia:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    iput-object v8, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->type:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 116
    const-string v8, "0001-01-01T00:00:00"

    iput-object v8, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->version:Ljava/lang/String;

    .line 117
    iget-object v8, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;->market:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCatalogUpdatedRequest;

    .line 120
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v6, v9}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCatalogUpdatedRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;Ljava/lang/String;)V

    .line 123
    .local v3, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCatalogUpdatedRequest;
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v8

    new-instance v9, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;

    invoke-direct {v9, p0, p2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v8, v3, v9}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 173
    .end local v3    # "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCatalogUpdatedRequest;
    .end local v6    # "version":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersion;
    .end local v7    # "versionItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    :goto_1
    return-void

    .line 104
    .end local v0    # "fetchFromNetwork":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    .restart local v0    # "fetchFromNetwork":Z
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v5, "socialNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSocialNetworkTypes:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 166
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSocialNetworkTypes:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-virtual {v8, v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->keyAt(I)I

    move-result v2

    .line 168
    .local v2, "key":I
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->mSocialNetworkTypes:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-virtual {v8, v2}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;

    .line 169
    .local v4, "socialNetwork":Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->toSocialNetwork()Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    .end local v2    # "key":I
    .end local v4    # "socialNetwork":Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;
    :cond_3
    invoke-interface {p2, v5, p1, v9}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method
