.class public Lcom/mcdonalds/app/util/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# static fields
.field private static final FAVORITE_PRODUCTS_CACHE_KEY:Ljava/lang/String;

.field private static final FAVORITE_STORES_CACHE_KEY:Ljava/lang/String;

.field private static final OFFERS_CACHE_KEY:Ljava/lang/String;

.field private static final PROMOTIONS_CACHE_KEY:Ljava/lang/String;

.field private static SHARED_INSTANCE:Lcom/mcdonalds/app/util/ServiceUtils;


# instance fields
.field private final ADVERTISABLE_PROMOTIONS_ENABLED:Ljava/lang/String;

.field private final mFavoriteProductsDelayedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mFavoriteProductsFetchInProgress:Z

.field private mFavoriteProductsFetched:Z

.field private final mFavoriteStoresDelayedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mFavoriteStoresFetchInProgress:Z

.field private mFavoriteStoresFetched:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastAdvertisableStore:Ljava/lang/String;

.field private mLastOffersLocation:Ljava/lang/String;

.field private final mOffersDelayedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mOffersFetchInProgress:Z

.field private mOffersFetched:Z

.field private final mPromotionsDelayedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPromotionsFetchInProgress:Z

.field private mPromotionsFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/app/util/ServiceUtils;->SHARED_INSTANCE:Lcom/mcdonalds/app/util/ServiceUtils;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FAVORITE_STORES_CACHE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/ServiceUtils;->FAVORITE_STORES_CACHE_KEY:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FAVORITE_PRODUCTS_CACHE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/ServiceUtils;->FAVORITE_PRODUCTS_CACHE_KEY:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OFFERS_CACHE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/ServiceUtils;->OFFERS_CACHE_KEY:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PROMOTIONS_CACHE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/ServiceUtils;->PROMOTIONS_CACHE_KEY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "modules.ordering.advertisablePromotionsEnabled"

    iput-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->ADVERTISABLE_PROMOTIONS_ENABLED:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetched:Z

    .line 79
    iput-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetchInProgress:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresDelayedListeners:Ljava/util/List;

    .line 92
    iput-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteProductsFetched:Z

    .line 95
    iput-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteProductsFetchInProgress:Z

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteProductsDelayedListeners:Ljava/util/List;

    .line 108
    iput-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetched:Z

    .line 111
    iput-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetchInProgress:Z

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersDelayedListeners:Ljava/util/List;

    .line 127
    iput-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetched:Z

    .line 130
    iput-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetchInProgress:Z

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsDelayedListeners:Ljava/util/List;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-boolean p1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetchInProgress:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.ServiceUtils"

    const-string v1, "access$100"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/mcdonalds/app/util/ServiceUtils;->FAVORITE_STORES_CACHE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$1002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-boolean p1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetched:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/util/ServiceUtils;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mLastAdvertisableStore:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/util/ServiceUtils;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsDelayedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

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

    .line 41
    iput-boolean p1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetchInProgress:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-boolean p1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetched:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/util/ServiceUtils;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresDelayedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-boolean p1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteProductsFetchInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/util/ServiceUtils;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteProductsDelayedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-boolean p1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetchInProgress:Z

    return p1
.end method

.method static synthetic access$702(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$702"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-boolean p1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetched:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/util/ServiceUtils;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersDelayedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/util/ServiceUtils;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/ServiceUtils;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.ServiceUtils"

    const-string v2, "access$900"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/ServiceUtils;->filterOutNotValidOffers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private fetchPromotions(Ljava/lang/String;I)V
    .locals 6
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "storeId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "fetchPromotions"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ServiceUtils;->removeAdvertisableCache()V

    .line 458
    iget-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetchInProgress:Z

    if-nez v1, :cond_0

    .line 459
    iput-boolean v5, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetchInProgress:Z

    .line 461
    const-string v1, "offers"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 463
    .local v0, "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 465
    new-instance v1, Lcom/mcdonalds/app/util/ServiceUtils$10;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/util/ServiceUtils$10;-><init>(Lcom/mcdonalds/app/util/ServiceUtils;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->getAdvertisablePromotions(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 491
    .end local v0    # "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    :cond_0
    :goto_0
    return-void

    .line 488
    .restart local v0    # "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    :cond_1
    iput-boolean v4, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetchInProgress:Z

    goto :goto_0
.end method

.method private filterOutNotValidOffers(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "input":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v3, "filterOutNotValidOffers"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 382
    :cond_0
    return-object v2

    .line 374
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v2, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 376
    .local v0, "now":Ljava/util/Date;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 377
    .local v1, "o":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.ServiceUtils"

    const-string v1, "getSharedInstance"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/mcdonalds/app/util/ServiceUtils;->SHARED_INSTANCE:Lcom/mcdonalds/app/util/ServiceUtils;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-direct {v0}, Lcom/mcdonalds/app/util/ServiceUtils;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/util/ServiceUtils;->SHARED_INSTANCE:Lcom/mcdonalds/app/util/ServiceUtils;

    .line 54
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/util/ServiceUtils;->SHARED_INSTANCE:Lcom/mcdonalds/app/util/ServiceUtils;

    return-object v0
.end method


# virtual methods
.method public fetchFavoriteLocations()V
    .locals 3

    .prologue
    const-string v1, "fetchFavoriteLocations"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetchInProgress:Z

    if-nez v1, :cond_0

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetchInProgress:Z

    .line 142
    const-string v1, "customer"

    .line 143
    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 145
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/util/ServiceUtils$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/util/ServiceUtils$1;-><init>(Lcom/mcdonalds/app/util/ServiceUtils;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 171
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_0
    :goto_0
    return-void

    .line 168
    .restart local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetchInProgress:Z

    goto :goto_0
.end method

.method public fetchOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/String;
    .param p3, "latitude"    # Ljava/lang/Double;
    .param p4, "longitude"    # Ljava/lang/Double;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v1, "fetchOffers"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-boolean v1, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetchInProgress:Z

    if-nez v1, :cond_0

    .line 269
    iput-boolean v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetchInProgress:Z

    .line 271
    const-string v1, "offers"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 273
    .local v0, "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v6, [Ljava/lang/String;

    aput-object p2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 277
    .local v4, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v5, Lcom/mcdonalds/app/util/ServiceUtils$5;

    invoke-direct {v5, p0, p1, p2}, Lcom/mcdonalds/app/util/ServiceUtils$5;-><init>(Lcom/mcdonalds/app/util/ServiceUtils;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->getCustomerOffers(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 305
    .end local v0    # "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    .end local v4    # "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 275
    .restart local v0    # "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 302
    :cond_2
    iput-boolean v5, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetchInProgress:Z

    goto :goto_1
.end method

.method public removeAdvertisableCache()V
    .locals 2

    .prologue
    const-string v0, "removeAdvertisableCache"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/app/util/ServiceUtils;->PROMOTIONS_CACHE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetched:Z

    .line 496
    return-void
.end method

.method public removeFavoriteStoresCache()V
    .locals 2

    .prologue
    const-string v0, "removeFavoriteStoresCache"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/app/util/ServiceUtils;->FAVORITE_STORES_CACHE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetched:Z

    .line 222
    return-void
.end method

.method public removeOffersCache()V
    .locals 2

    .prologue
    const-string v0, "removeOffersCache"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "OFFERS_CACHE_KEY"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetched:Z

    .line 388
    return-void
.end method

.method public retrieveAdvertisablePromotions(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 12
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;>;"
    const/4 v11, 0x0

    const/4 v6, 0x0

    const-string v7, "retrieveAdvertisablePromotions"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    new-instance v5, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v7, "retrieveAdvertisablePromotions"

    invoke-direct {v5, v7}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 394
    .local v5, "unused":Lcom/mcdonalds/sdk/AsyncToken;
    const-string v7, "customer"

    invoke-static {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 395
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const-string v7, "ordering"

    invoke-static {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 396
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 398
    .local v1, "hasMobileOrdering":Z
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "modules.ordering.advertisablePromotionsEnabled"

    invoke-virtual {v7, v8, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v1, :cond_7

    .line 400
    iget-boolean v7, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetchInProgress:Z

    if-eqz v7, :cond_2

    .line 401
    if-eqz p3, :cond_0

    .line 402
    iget-object v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsDelayedListeners:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_0
    :goto_1
    return-object v5

    .end local v1    # "hasMobileOrdering":Z
    :cond_1
    move v1, v6

    .line 396
    goto :goto_0

    .line 406
    .restart local v1    # "hasMobileOrdering":Z
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mcdonalds/app/util/ServiceUtils;->PROMOTIONS_CACHE_KEY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mLastAdvertisableStore:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ServiceUtils;->removeAdvertisableCache()V

    .line 413
    :cond_3
    iget-boolean v7, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetched:Z

    if-eqz v7, :cond_4

    .line 414
    new-instance v7, Lcom/mcdonalds/app/util/ServiceUtils$8;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/util/ServiceUtils$8;-><init>(Lcom/mcdonalds/app/util/ServiceUtils;)V

    .line 415
    invoke-virtual {v7}, Lcom/mcdonalds/app/util/ServiceUtils$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 418
    .local v4, "type":Ljava/lang/reflect/Type;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v7

    invoke-virtual {v7, v2, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 422
    .local v3, "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;"
    if-nez v3, :cond_6

    .line 424
    iput-boolean v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetched:Z

    .line 440
    .end local v3    # "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;"
    .end local v4    # "type":Ljava/lang/reflect/Type;
    :cond_4
    :goto_2
    iget-boolean v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsFetched:Z

    if-nez v6, :cond_0

    .line 442
    if-eqz p3, :cond_5

    .line 443
    iget-object v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mPromotionsDelayedListeners:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/util/ServiceUtils;->fetchPromotions(Ljava/lang/String;I)V

    .line 446
    iput-object v2, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mLastAdvertisableStore:Ljava/lang/String;

    goto :goto_1

    .line 428
    .restart local v3    # "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;"
    .restart local v4    # "type":Ljava/lang/reflect/Type;
    :cond_6
    if-eqz p3, :cond_4

    .line 429
    iget-object v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/mcdonalds/app/util/ServiceUtils$9;

    invoke-direct {v7, p0, p3, v3}, Lcom/mcdonalds/app/util/ServiceUtils$9;-><init>(Lcom/mcdonalds/app/util/ServiceUtils;Lcom/mcdonalds/sdk/AsyncListener;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 449
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;"
    .end local v4    # "type":Ljava/lang/reflect/Type;
    :cond_7
    if-eqz p3, :cond_0

    .line 450
    new-instance v6, Lcom/mcdonalds/sdk/AsyncException;

    const-string v7, "No config param: \"modules.ordering.advertisablePromotionsEnabled\""

    invoke-direct {v6, v7}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v11, v11, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method

.method public retrieveFavoriteProducts(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "retrieveFavoriteProducts"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "noFavoriteItemsCache"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, "unused":Lcom/mcdonalds/sdk/AsyncToken;
    if-eqz p1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteProductsDelayedListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    iget-boolean v2, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteProductsFetchInProgress:Z

    if-nez v2, :cond_1

    .line 236
    iput-boolean v5, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteProductsFetchInProgress:Z

    .line 238
    const-string v2, "customer"

    .line 239
    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 241
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 242
    new-instance v2, Lcom/mcdonalds/app/util/ServiceUtils$4;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/util/ServiceUtils$4;-><init>(Lcom/mcdonalds/app/util/ServiceUtils;)V

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateFavoriteProducts(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 261
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_1
    :goto_0
    return-object v1

    .line 257
    .restart local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_2
    iput-boolean v4, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteProductsFetchInProgress:Z

    goto :goto_0
.end method

.method public retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;>;"
    const/4 v6, 0x0

    const-string v3, "retrieveFavoriteStores"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "retrieveFavoriteStoresFromCache"

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, "unused":Lcom/mcdonalds/sdk/AsyncToken;
    iget-boolean v3, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetchInProgress:Z

    if-eqz v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresDelayedListeners:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    :goto_0
    return-object v2

    .line 184
    :cond_1
    iget-boolean v3, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetched:Z

    if-eqz v3, :cond_2

    .line 185
    new-instance v3, Lcom/mcdonalds/app/util/ServiceUtils$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/util/ServiceUtils$2;-><init>(Lcom/mcdonalds/app/util/ServiceUtils;)V

    .line 186
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/ServiceUtils$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 189
    .local v1, "type":Ljava/lang/reflect/Type;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/app/util/ServiceUtils;->FAVORITE_STORES_CACHE_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    .local v0, "storeFavoriteInfo":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
    if-nez v0, :cond_3

    .line 195
    iput-boolean v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetched:Z

    .line 208
    .end local v0    # "storeFavoriteInfo":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
    .end local v1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresFetched:Z

    if-nez v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mFavoriteStoresDelayedListeners:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ServiceUtils;->fetchFavoriteLocations()V

    goto :goto_0

    .line 199
    .restart local v0    # "storeFavoriteInfo":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
    .restart local v1    # "type":Ljava/lang/reflect/Type;
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/mcdonalds/app/util/ServiceUtils$3;

    invoke-direct {v4, p0, p2, v0}, Lcom/mcdonalds/app/util/ServiceUtils$3;-><init>(Lcom/mcdonalds/app/util/ServiceUtils;Lcom/mcdonalds/sdk/AsyncListener;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public retrieveOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 10
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/String;
    .param p3, "latitude"    # Ljava/lang/Double;
    .param p4, "longitude"    # Ljava/lang/Double;
    .param p5    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;>;"
    const/4 v9, 0x0

    const-string v6, "retrieveOffers"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v9

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    const/4 v8, 0x4

    aput-object p5, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    const-string v6, "customer"

    .line 312
    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 314
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v5, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v6, "retrieveOffersFromCache"

    invoke-direct {v5, v6}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 316
    .local v5, "unused":Lcom/mcdonalds/sdk/AsyncToken;
    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "offersLocation":Ljava/lang/String;
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 322
    iget-object v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mLastOffersLocation:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/ServiceUtils;->removeOffersCache()V

    .line 329
    :cond_0
    iget-boolean v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetchInProgress:Z

    if-eqz v6, :cond_2

    .line 330
    iget-object v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersDelayedListeners:Ljava/util/List;

    invoke-interface {v6, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v3    # "offersLocation":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 334
    .restart local v3    # "offersLocation":Ljava/lang/String;
    :cond_2
    iget-boolean v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetched:Z

    if-eqz v6, :cond_3

    .line 335
    new-instance v6, Lcom/mcdonalds/app/util/ServiceUtils$6;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/util/ServiceUtils$6;-><init>(Lcom/mcdonalds/app/util/ServiceUtils;)V

    .line 336
    invoke-virtual {v6}, Lcom/mcdonalds/app/util/ServiceUtils$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 337
    .local v4, "type":Ljava/lang/reflect/Type;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mcdonalds/app/util/ServiceUtils;->OFFERS_CACHE_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 344
    .local v2, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    if-nez v2, :cond_4

    .line 346
    iput-boolean v9, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetched:Z

    .line 359
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .end local v4    # "type":Ljava/lang/reflect/Type;
    :cond_3
    :goto_1
    iget-boolean v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersFetched:Z

    if-nez v6, :cond_1

    .line 361
    iget-object v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mOffersDelayedListeners:Ljava/util/List;

    invoke-interface {v6, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iput-object v3, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mLastOffersLocation:Ljava/lang/String;

    .line 363
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mcdonalds/app/util/ServiceUtils;->fetchOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_0

    .line 350
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .restart local v4    # "type":Ljava/lang/reflect/Type;
    :cond_4
    iget-object v6, p0, Lcom/mcdonalds/app/util/ServiceUtils;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/mcdonalds/app/util/ServiceUtils$7;

    invoke-direct {v7, p0, p5, v2}, Lcom/mcdonalds/app/util/ServiceUtils$7;-><init>(Lcom/mcdonalds/app/util/ServiceUtils;Lcom/mcdonalds/sdk/AsyncListener;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public updateArchivedOfferInCache(I)V
    .locals 11
    .param p1, "offerId"    # I

    .prologue
    const/4 v10, 0x1

    const-string/jumbo v6, "updateArchivedOfferInCache"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    const-string v6, "customer"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 505
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 506
    .local v5, "username":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    .line 507
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v3, :cond_3

    const-string v4, ""

    .line 508
    .local v4, "storeId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getCachedOffers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 511
    .local v2, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    if-eqz v2, :cond_2

    .line 512
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 513
    .local v1, "o":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_0

    .line 514
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->setArchived(Ljava/lang/Boolean;)V

    .line 519
    .end local v1    # "o":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setCachedOffers(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 521
    :cond_2
    return-void

    .line 507
    .end local v2    # "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .end local v4    # "storeId":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
