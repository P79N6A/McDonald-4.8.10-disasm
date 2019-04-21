.class public Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
.super Ljava/lang/Object;
.source "DashboardViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;


# instance fields
.field private mALittleFurtherAwayStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mALittleFurtherOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private mAddedToOrder:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStoreOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDefaultRadius:Ljava/lang/Double;

.field private mFavoriteInfoArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteStoreOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingPromos:Z

.field private mMySurprisesMode:Z

.field private mNearbyOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private mNearbyOffersEnabled:Z

.field private mNearbyRadius:Ljava/lang/Double;

.field private mNearbyStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mOfferSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/offers/OfferSection;",
            ">;"
        }
    .end annotation
.end field

.field final mOffersComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private mOffersCount:I

.field private mPromoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/Promo;",
            ">;"
        }
    .end annotation
.end field

.field private mPromosExternalListener:Lcom/mcdonalds/sdk/AsyncListener;
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

.field private mPromosResponseListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/app/model/PromoResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mActiveOffers:Ljava/util/List;

    .line 476
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$5;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mOffersComparator:Ljava/util/Comparator;

    .line 675
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$7;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromosResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyStores:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mFavoriteStores:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mALittleFurtherAwayStores:Ljava/util/List;

    .line 130
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-boolean v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mMySurprisesMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-boolean v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffersEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mActiveOffers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mActiveOffers:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->clearExistingOffers()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->processOffers()V

    return-void
.end method

.method static synthetic access$1402(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iput-boolean p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mLoadingPromos:Z

    return p1
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v1, "access$1500"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromosExternalListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Landroid/content/Context;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
    .param p1, "x1"    # Ljava/lang/Double;
    .param p2, "x2"    # Ljava/lang/Double;
    .param p3, "x3"    # Lcom/mcdonalds/sdk/AsyncCounter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$1900"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->updateCustomerOffers(Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncCounter;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getNearbyStores()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getFavoriteStores()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$400"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->updateFilteredOffersAndStores(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$502(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyStores:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mFavoriteInfoArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mFavoriteInfoArray:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->refreshCurrentAndNearbyWithFavorites()V

    return-void
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "access$900"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->setFavoriteStores(Ljava/util/List;)V

    return-void
.end method

.method private clearExistingOffers()V
    .locals 2

    .prologue
    const-string v0, "clearExistingOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mALittleFurtherOffers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mALittleFurtherOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCurrentStoreOffers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCurrentStoreOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mFavoriteStoreOffers:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mFavoriteStoreOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 424
    :cond_3
    return-void
.end method

.method private createALittleFurtherAwayList()V
    .locals 4

    .prologue
    const-string v2, "createALittleFurtherAwayList"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mALittleFurtherOffers:Ljava/util/List;

    .line 766
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 767
    .local v0, "nearbyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getNearbyOffers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 768
    .local v1, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 771
    .end local v1    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getActiveOffers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 772
    .restart local v1    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 773
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mALittleFurtherOffers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 776
    .end local v1    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_2
    return-void
.end method

.method public static destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v1, "destroy"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sput-object v2, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->sInstance:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .line 145
    return-void
.end method

.method private filterForDelivery(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v2, "filterForDelivery"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 861
    :cond_0
    return-object v0

    .line 855
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v0, "deliveryOffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 857
    .local v1, "o":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 858
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private filterForPickup(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v2, "filterForPickup"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 873
    :cond_0
    return-object v1

    .line 867
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .local v1, "pickupOffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 869
    .local v0, "o":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 870
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private filterMsa(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    const-string v2, "filterMsa"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 931
    :cond_0
    return-object v1

    .line 923
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 926
    .local v0, "o":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isExpirationChanged()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 927
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private filterOutPunchCard(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    const-string v2, "filterOutPunchCard"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 944
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 956
    :cond_0
    return-object v1

    .line 946
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 949
    .local v0, "o":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_RENEWABLE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-eq v3, v4, :cond_2

    .line 952
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getFavoriteStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getFavoriteStores"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mFavoriteStores:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.DashboardViewModel"

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->sInstance:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-direct {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->sInstance:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .line 137
    sget-object v0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->sInstance:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->init(Landroid/content/Context;)V

    .line 140
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->sInstance:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    return-object v0
.end method

.method private getNearbyStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getNearbyStores"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyStores:Ljava/util/List;

    return-object v0
.end method

.method private loadOfferSections()V
    .locals 6

    .prologue
    const-string v2, "loadOfferSections"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mOfferSections:Ljava/util/ArrayList;

    .line 622
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.dashboard.offerSections"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 624
    .local v0, "map":Lcom/google/gson/internal/LinkedTreeMap;
    new-instance v1, Lcom/mcdonalds/app/offers/OfferSection;

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mContext:Landroid/content/Context;

    const-string v2, "sectionTitle"

    .line 625
    invoke-virtual {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 624
    invoke-static {v3, v2}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "sectionType"

    .line 626
    invoke-virtual {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "enabled"

    .line 627
    invoke-virtual {v0, v3}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v1, v5, v2, v3}, Lcom/mcdonalds/app/offers/OfferSection;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 629
    .local v1, "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mOfferSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    .end local v0    # "map":Lcom/google/gson/internal/LinkedTreeMap;
    .end local v1    # "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    :cond_0
    return-void
.end method

.method private offersInStore(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v5, "offersInStore"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v1, "offersInStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 881
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 883
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 884
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOffers()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 886
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v4, "storesWithOffer":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_4

    .line 889
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 890
    .local v2, "restaurantId":Ljava/lang/Integer;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 891
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    .end local v2    # "restaurantId":Ljava/lang/Integer;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 904
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 900
    :cond_4
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 911
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v4    # "storesWithOffer":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_5
    return-object v1
.end method

.method private processOffers()V
    .locals 4

    .prologue
    const-string v2, "processOffers"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mActiveOffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 463
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 465
    .local v1, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isArchived()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isExpired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 470
    .end local v1    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mActiveOffers:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setOffers(Ljava/util/List;)V

    .line 473
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mActiveOffers:Ljava/util/List;

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mOffersComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 474
    return-void
.end method

.method private processStoresResponse(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v1, "processStoresResponse"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyStores:Ljava/util/List;

    .line 781
    if-eqz p1, :cond_2

    .line 782
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 784
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDistance()D

    move-result-wide v2

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyRadius:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 785
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyStores:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 786
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDistance()D

    move-result-wide v2

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mDefaultRadius:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 787
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mALittleFurtherAwayStores:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 791
    .end local v0    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    return-void
.end method

.method private refreshCurrentAndNearbyWithFavorites()V
    .locals 4

    .prologue
    const-string v2, "refreshCurrentAndNearbyWithFavorites"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_0

    .line 324
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 325
    .local v0, "current":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->updateFavoriteInfo(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 330
    .end local v0    # "current":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyStores:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyStores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 332
    .local v1, "nearby":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->updateFavoriteInfo(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    goto :goto_0

    .line 335
    .end local v1    # "nearby":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    return-void
.end method

.method private requestCustomerOffers(Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncCounter",
            "<",
            "Ljava/util/List;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "counter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/util/List;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v5, "requestCustomerOffers"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getUserLocation()Landroid/location/Location;

    move-result-object v1

    .line 374
    .local v1, "location":Landroid/location/Location;
    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mAddedToOrder:Z

    if-nez v5, :cond_0

    .line 375
    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mMySurprisesMode:Z

    if-eqz v5, :cond_1

    .line 378
    invoke-direct {p0, v7, v7, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->updateCustomerOffers(Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncCounter;)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    if-eqz v1, :cond_2

    .line 383
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 384
    .local v0, "latitude":Ljava/lang/Double;
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 386
    .local v2, "longitude":Ljava/lang/Double;
    invoke-direct {p0, v0, v2, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->updateCustomerOffers(Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncCounter;)V

    goto :goto_0

    .line 390
    .end local v0    # "latitude":Ljava/lang/Double;
    .end local v2    # "longitude":Ljava/lang/Double;
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "zipCode":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 394
    new-instance v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;

    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Landroid/content/Context;Lcom/mcdonalds/sdk/AsyncCounter;)V

    .line 396
    .local v3, "task":Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;
    new-array v5, v9, [Ljava/lang/String;

    aput-object v4, v5, v8

    instance-of v6, v3, Landroid/os/AsyncTask;

    if-nez v6, :cond_4

    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 390
    .end local v3    # "task":Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;
    .end local v4    # "zipCode":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_1

    .line 396
    .restart local v3    # "task":Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;
    .restart local v4    # "zipCode":Ljava/lang/String;
    :cond_4
    check-cast v3, Landroid/os/AsyncTask;

    .end local v3    # "task":Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;
    invoke-static {v3, v5}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 405
    :cond_5
    invoke-direct {p0, v7, v7, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->updateCustomerOffers(Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncCounter;)V

    goto :goto_0
.end method

.method private resetOfferCount()V
    .locals 2

    .prologue
    const-string v0, "resetOfferCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.dashboard.maxVisibleOffers"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mOffersCount:I

    .line 504
    iget v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mOffersCount:I

    if-nez v0, :cond_0

    .line 505
    const/4 v0, 0x6

    iput v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mOffersCount:I

    .line 507
    :cond_0
    return-void
.end method

.method private setFavoriteStores(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v0, "setFavoriteStores"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mFavoriteStores:Ljava/util/List;

    .line 807
    return-void
.end method

.method private updateCustomerOffers(Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 8
    .param p1, "latitude"    # Ljava/lang/Double;
    .param p2, "longitude"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/mcdonalds/sdk/AsyncCounter",
            "<",
            "Ljava/util/List;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/util/List;>;"
    const-string/jumbo v0, "updateCustomerOffers"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v3, 0x2

    aput-object p3, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v6

    .line 428
    .local v6, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    .line 430
    .local v7, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v7, :cond_0

    const-string v2, ""

    .line 431
    .local v2, "storeId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;

    invoke-direct {v5, p0, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$4;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Lcom/mcdonalds/sdk/AsyncCounter;)V

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 457
    return-void

    .line 430
    .end local v2    # "storeId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateFavoriteInfo(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 7
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v6, 0x0

    const-string/jumbo v3, "updateFavoriteInfo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "favorite":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 340
    .local v0, "favStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 341
    move-object v1, v0

    .line 346
    .end local v0    # "favStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    if-eqz v1, :cond_3

    .line 347
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mFavoriteInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 349
    .local v2, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    if-eqz v2, :cond_2

    .line 350
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 351
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 355
    .end local v2    # "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    :cond_2
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 358
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDistance()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setDistance(D)V

    .line 359
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreHours()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreHours(Ljava/util/List;)V

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_3
    invoke-virtual {p1, v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 364
    invoke-virtual {p1, v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFilteredOffersAndStores(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "offerList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .local p2, "allStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p4, "asyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;>;"
    const/4 v4, 0x0

    const-string/jumbo v1, "updateFilteredOffersAndStores"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->processStoresResponse(Ljava/util/List;)V

    .line 742
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getActiveOffers()Ljava/util/List;

    move-result-object v0

    .line 744
    .local v0, "activeOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.dashboard.disallowNearYouTabToShowOffers"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffers:Ljava/util/List;

    .line 746
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mALittleFurtherOffers:Ljava/util/List;

    .line 752
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    :goto_1
    iput-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCurrentStoreOffers:Ljava/util/List;

    .line 757
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getFavoriteStores()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->offersInStore(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mFavoriteStoreOffers:Ljava/util/List;

    .line 759
    invoke-interface {p4, v4, v4, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 760
    return-void

    .line 748
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getNearbyStores()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->offersInStore(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffers:Ljava/util/List;

    .line 749
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->createALittleFurtherAwayList()V

    goto :goto_0

    .line 754
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getActiveOffers()Ljava/util/List;

    move-result-object v1

    .line 755
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 754
    invoke-direct {p0, v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->offersInStore(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public getALittleFurtherOffers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "getALittleFurtherOffers"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mALittleFurtherOffers:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterForPickup(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterMsa(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 819
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.offers.hidePunchcardInNearSection"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterOutPunchCard(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 822
    :cond_0
    return-object v0
.end method

.method public getActiveOffers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getActiveOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mActiveOffers:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentOrderOffers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "getCurrentOrderOffers"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 718
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v2, "orderOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 721
    .local v1, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 725
    .end local v1    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_0
    return-object v2
.end method

.method public getCurrentStoreDeliveryOffers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getCurrentStoreDeliveryOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getCurrentStoreOffers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterForDelivery(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStoreId()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "getCurrentStoreId"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "homeStoreIdString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_0
    return-object v0
.end method

.method public getCurrentStoreName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "getCurrentStoreName"

    invoke-static {p0, v3, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 573
    .local v1, "current":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_1

    .line 576
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 578
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 581
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 582
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 585
    :cond_0
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "favoriteName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "addressName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 591
    .end local v0    # "addressName":Ljava/lang/String;
    .end local v2    # "favoriteName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .restart local v0    # "addressName":Ljava/lang/String;
    .restart local v2    # "favoriteName":Ljava/lang/String;
    :cond_2
    move-object v2, v0

    .line 588
    goto :goto_0
.end method

.method public getCurrentStoreOffers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getCurrentStoreOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 826
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCurrentStoreOffers:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterMsa(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStorePickupOffers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getCurrentStorePickupOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getCurrentStoreOffers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterForPickup(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerFirstName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "getCustomerFirstName"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 543
    :cond_0
    return-object v0
.end method

.method public getCustomerLastOrder(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "orderAsyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    const/4 v3, 0x0

    const-string v0, "getCustomerLastOrder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderUtils;->getNumberOfRecentOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$6;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$6;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getRecentOrders(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "Ordering is not enabled!"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v3, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public getFavoriteStoreDeliveryOffers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getFavoriteStoreDeliveryOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getFavoriteStoreOffers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterForDelivery(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFavoriteStoreOffers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getFavoriteStoreOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.offers.hideFavouriteOffers"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 841
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mFavoriteStoreOffers:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterMsa(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFavoriteStorePickupOffers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getFavoriteStorePickupOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getFavoriteStoreOffers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterForPickup(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHomeListItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/home/HomeListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getHomeListItems"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v7, "homeListItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/home/HomeListItem;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v2, "interface.dashboard.items"

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 598
    .local v9, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v9, :cond_0

    .line 599
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 600
    .local v8, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mContext:Landroid/content/Context;

    const-string v0, "itemImage"

    .line 601
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 600
    invoke-static {v2, v0}, Lcom/mcdonalds/app/util/UIUtils;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 603
    .local v1, "iconResourceId":I
    new-instance v0, Lcom/mcdonalds/app/home/HomeListItem;

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mContext:Landroid/content/Context;

    const-string v2, "itemName"

    .line 606
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mContext:Landroid/content/Context;

    const-string v3, "itemDescription"

    .line 607
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemLink"

    .line 608
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "itemAttr"

    .line 609
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "itemName"

    .line 610
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/home/HomeListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 603
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    .end local v1    # "iconResourceId":I
    .end local v8    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v7
.end method

.method public getNearbyOffers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "getNearbyOffers"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffers:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterForPickup(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterMsa(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 811
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.offers.hidePunchcardInNearSection"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->filterOutPunchCard(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 814
    :cond_0
    return-object v0
.end method

.method public getOfferCount()I
    .locals 2

    .prologue
    const-string v0, "getOfferCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    iget v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mOffersCount:I

    return v0
.end method

.method public getOffers(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;>;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "asyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;>;"
    .local p2, "favStoreAsyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getOffers"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object p2, v6, v3

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->resetOfferCount()V

    .line 196
    iput-boolean v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffersEnabled:Z

    .line 197
    iget-boolean v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mMySurprisesMode:Z

    if-nez v5, :cond_1

    .line 198
    iget-object v5, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mOfferSections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/offers/OfferSection;

    .line 200
    .local v1, "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    iget-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffersEnabled:Z

    if-nez v6, :cond_0

    .line 201
    sget-object v5, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->NEAR:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    invoke-virtual {v5}, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferSection;->getSectionType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferSection;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    iput-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffersEnabled:Z

    .line 207
    .end local v1    # "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    :cond_1
    iget-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mAddedToOrder:Z

    if-eqz v3, :cond_2

    move v2, v4

    .line 208
    .local v2, "requestCount":I
    :cond_2
    iget-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffersEnabled:Z

    if-eqz v3, :cond_3

    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 213
    :cond_3
    new-instance v0, Lcom/mcdonalds/sdk/AsyncCounter;

    new-instance v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {v0, v2, v3}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 239
    .local v0, "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/util/List;>;"
    if-nez v2, :cond_5

    .line 240
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->requestCustomerOffers(Lcom/mcdonalds/sdk/AsyncCounter;)V

    .line 317
    :goto_1
    return-void

    .end local v0    # "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/util/List;>;"
    .end local v2    # "requestCount":I
    .restart local v1    # "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    :cond_4
    move v3, v4

    .line 201
    goto :goto_0

    .line 244
    .end local v1    # "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    .restart local v0    # "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/util/List;>;"
    .restart local v2    # "requestCount":I
    :cond_5
    iget-boolean v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyOffersEnabled:Z

    if-eqz v3, :cond_7

    .line 247
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mDefaultRadius:Ljava/lang/Double;

    if-nez v3, :cond_6

    .line 248
    const-wide v4, 0x40cf720000000000L    # 16100.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mDefaultRadius:Ljava/lang/Double;

    .line 251
    :cond_6
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mDefaultRadius:Ljava/lang/Double;

    const/4 v5, 0x0

    new-instance v6, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$2;

    invoke-direct {v6, p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$2;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Lcom/mcdonalds/sdk/AsyncCounter;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresNearCurrentLocationWithinRadius(Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 262
    :cond_7
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    invoke-direct {v5, p0, v0, p2}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Lcom/mcdonalds/sdk/AsyncCounter;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 316
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->requestCustomerOffers(Lcom/mcdonalds/sdk/AsyncCounter;)V

    goto :goto_1
.end method

.method public getPromoList(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V
    .locals 11
    .param p2, "connection"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/Promo;",
            ">;>;",
            "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "asyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/app/model/Promo;>;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "getPromoList"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    aput-object p2, v7, v10

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    iget-boolean v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mLoadingPromos:Z

    if-eqz v6, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromosExternalListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 642
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromoList:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 644
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromosExternalListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromoList:Ljava/util/List;

    invoke-interface {v6, v7, v9, v9}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 648
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.dashboard.promos"

    .line 649
    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 651
    .local v3, "promos":Ljava/lang/Object;
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object v5, v3

    .line 653
    check-cast v5, Ljava/lang/String;

    .line 654
    .local v5, "url":Ljava/lang/String;
    new-instance v2, Lcom/mcdonalds/app/net/JsonGetRequest;

    const-class v6, Lcom/mcdonalds/app/model/PromoResponse;

    invoke-direct {v2, v5, v6}, Lcom/mcdonalds/app/net/JsonGetRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 656
    .local v2, "promoRequest":Lcom/mcdonalds/app/net/JsonGetRequest;
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromosResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {p2, v2, v6}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 657
    iput-boolean v10, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mLoadingPromos:Z

    goto :goto_0

    .line 659
    .end local v2    # "promoRequest":Lcom/mcdonalds/app/net/JsonGetRequest;
    .end local v5    # "url":Ljava/lang/String;
    :cond_3
    instance-of v6, v3, Ljava/util/List;

    if-eqz v6, :cond_0

    .line 662
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.dashboard.promos"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 664
    .local v4, "promosMap":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 666
    .local v0, "map":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/mcdonalds/app/model/Promo;

    const-string/jumbo v6, "url"

    invoke-virtual {v0, v6}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "itemLink"

    invoke-virtual {v0, v7}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v1, v6, v9, v7}, Lcom/mcdonalds/app/model/Promo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 667
    .local v1, "promo":Lcom/mcdonalds/app/model/Promo;
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 670
    .end local v0    # "map":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "promo":Lcom/mcdonalds/app/model/Promo;
    :cond_4
    iget-object v6, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromosExternalListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v7, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mPromoList:Ljava/util/List;

    invoke-interface {v6, v7, v9, v9}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "init"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mContext:Landroid/content/Context;

    .line 151
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.offers.nearbySearchRadius"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mNearbyRadius:Ljava/lang/Double;

    .line 154
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.storeLocator.defaultSearchRadius"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mDefaultRadius:Ljava/lang/Double;

    .line 157
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.dashboard.useMySurprises"

    .line 158
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mMySurprisesMode:Z

    .line 159
    const-string v0, "storeLocator"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 161
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->resetOfferCount()V

    .line 162
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getHomeListItems()Ljava/util/List;

    .line 163
    invoke-direct {p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->loadOfferSections()V

    .line 164
    return-void
.end method

.method public isEmailVerified()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "isEmailVerified"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailVerified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    const-string v0, "isLoggedIn"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public isMobileVerified()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "isMobileVerified"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isMobileVerified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isSubscribedToOffers()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "isSubscribedToOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public loadScheduledOrders(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/home/HomeListItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/app/home/HomeListItem;>;>;"
    const-string v1, "loadScheduledOrders"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.delivery"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    const-string v1, "delivery"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 980
    .local v0, "module":Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    if-eqz v0, :cond_0

    .line 981
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$8;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$8;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStatus(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1015
    .end local v0    # "module":Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    :cond_0
    return-void
.end method

.method public removeOfferFromOrder(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 7
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "asyncListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    const-string v3, "removeOfferFromOrder"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 962
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->removeOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    .line 964
    const/4 v2, 0x0

    .line 965
    .local v2, "removed":Z
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->hasOffers()Z

    move-result v3

    if-nez v3, :cond_1

    .line 966
    const/4 v2, 0x1

    .line 973
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3, v6, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 974
    return-void

    .line 968
    :cond_1
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 969
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v2

    .line 970
    goto :goto_0
.end method

.method public verifyIsAddedToOrder()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "verifyIsAddedToOrder"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 731
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->hasOffers()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mAddedToOrder:Z

    .line 733
    iget-boolean v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->mAddedToOrder:Z

    return v1

    .line 731
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
