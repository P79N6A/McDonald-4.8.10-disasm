.class public Lcom/mcdonalds/app/storelocator/StoreLocatorController;
.super Ljava/lang/Object;
.source "StoreLocatorController.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/PagerItemListener;
.implements Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
.implements Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;


# static fields
.field private static MAP_ICON_RES_ID:I

.field private static SELECTED_MAP_ICON_RES_ID:I


# instance fields
.field private DEFAULT_RADIUS:Ljava/lang/Double;

.field private activeFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFilterForMobileOrderNeeded:Z

.field private mAllowsFavoritingWithoutMobileOrdering:Z

.field private mAllowsSelectionWithoutMobileOrdering:Z

.field private mAutoSelectClosestStore:Z

.field private mCurrentStoreSelectionMode:Z

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDismissOnPlaceOrder:Z

.field private mFavoriteMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoritesData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchedModules:Z

.field private mIgnoreUserLocation:Z

.field private mIsRefreshing:Z

.field private mLastFavorite:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/storelocator/StoreLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationError:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMapOnly:Z

.field private mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

.field protected mNearByMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mNearbyFilteredStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mNearbySearchAddress:Ljava/lang/String;

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

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mSelectedStoreId:Ljava/lang/Integer;

.field private mSelectedStoreNickname:Ljava/lang/String;

.field private mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

.field private mSelectedStoreState:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

.field private mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    sput v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->SELECTED_MAP_ICON_RES_ID:I

    .line 87
    sput v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->MAP_ICON_RES_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationFragment;ZZZLjava/lang/String;Z)V
    .locals 4
    .param p1, "urlNavigationFragment"    # Lcom/mcdonalds/app/ui/URLNavigationFragment;
    .param p2, "mapOnly"    # Z
    .param p3, "currentStoreSelectionMode"    # Z
    .param p4, "autoSelectClosestStore"    # Z
    .param p5, "nearbySearchAddress"    # Ljava/lang/String;
    .param p6, "dismissOnPlaceOrder"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->DEFAULT_RADIUS:Ljava/lang/Double;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    .line 92
    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    .line 93
    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyFilteredStores:Ljava/util/List;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isFilterForMobileOrderNeeded:Z

    .line 114
    iput-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mAllowsSelectionWithoutMobileOrdering:Z

    .line 115
    iput-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mAllowsFavoritingWithoutMobileOrdering:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->activeFilters:Ljava/util/List;

    .line 127
    iput-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mIgnoreUserLocation:Z

    .line 135
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mLocationManager:Landroid/location/LocationManager;

    .line 137
    iput-boolean p2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mMapOnly:Z

    .line 138
    iput-boolean p3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCurrentStoreSelectionMode:Z

    .line 139
    iput-boolean p4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mAutoSelectClosestStore:Z

    .line 140
    iput-object p5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbySearchAddress:Ljava/lang/String;

    .line 141
    iput-boolean p6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mDismissOnPlaceOrder:Z

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoritesData:Landroid/util/SparseArray;

    .line 144
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.storeLocator.defaultSearchRadius"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getDoubleForKey(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->DEFAULT_RADIUS:Ljava/lang/Double;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateFavoriteStores(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$1102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mLocationError:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$1200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateNearbyStoresWithSearchResponse(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$1302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$1500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->activeFilters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$1602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mIsRefreshing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->clearSelection()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoritesData:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->refreshCurrentAndNearbyWithFavorites()V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->startMainActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorController"

    const-string v2, "access$900"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateMobileOrderingStatus(Ljava/util/List;)V

    return-void
.end method

.method private clearSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "clearSelection"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreId:Ljava/lang/Integer;

    .line 756
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 757
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreNickname:Ljava/lang/String;

    .line 758
    return-void
.end method

.method private getMapIconResID()I
    .locals 2

    .prologue
    const-string v0, "getMapIconResID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    sget v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->MAP_ICON_RES_ID:I

    if-nez v0, :cond_0

    .line 878
    const-string v0, "interface.storelocator.unselectedMapIcon"

    const-string v1, "map_icon_gray"

    .line 879
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getDrawableResIDByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->MAP_ICON_RES_ID:I

    .line 882
    :cond_0
    sget v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->MAP_ICON_RES_ID:I

    return v0
.end method

.method private getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;
    .locals 2

    .prologue
    const-string v0, "getNavigationActivity"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedMapIconResID()I
    .locals 2

    .prologue
    const-string v0, "getSelectedMapIconResID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    sget v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->SELECTED_MAP_ICON_RES_ID:I

    if-nez v0, :cond_0

    .line 869
    const-string v0, "interface.storelocator.selectedMapIcon"

    const-string v1, "map_icon_red"

    .line 870
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getDrawableResIDByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->SELECTED_MAP_ICON_RES_ID:I

    .line 873
    :cond_0
    sget v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->SELECTED_MAP_ICON_RES_ID:I

    return v0
.end method

.method private refreshCurrentAndNearbyWithFavorites()V
    .locals 4

    .prologue
    const-string v2, "refreshCurrentAndNearbyWithFavorites"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1672
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 1674
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_0

    .line 1676
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 1677
    .local v0, "current":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    .line 1678
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateFavoriteInfo(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 1683
    .end local v0    # "current":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1684
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1685
    .local v1, "nearby":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateFavoriteInfo(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    goto :goto_0

    .line 1689
    .end local v1    # "nearby":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    return-void
.end method

.method private refreshCurrentStoreAndFavorites(Z)V
    .locals 6
    .param p1, "showActivityIndicator"    # Z

    .prologue
    const-string v2, "refreshCurrentStoreAndFavorites"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v1, "storeIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1192
    .local v0, "homeStoreIdString":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_0

    .line 1194
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1196
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1199
    :cond_0
    if-eqz v0, :cond_1

    .line 1201
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    new-instance v3, Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoreForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1239
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_2

    .line 1241
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1243
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/storelocator/StoreLocatorController$7;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$7;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1303
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbySearchAddress:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1304
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbySearchAddress:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByAddress(Ljava/lang/String;Z)V

    .line 1308
    :goto_0
    return-void

    .line 1306
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByLocation(Z)V

    goto :goto_0
.end method

.method private refreshStores()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v0, "refreshStores"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mIsRefreshing:Z

    if-nez v0, :cond_0

    .line 1144
    iput-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mIsRefreshing:Z

    .line 1146
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->refreshCurrentStoreAndFavorites(Z)V

    .line 1147
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoreStatus()V

    .line 1149
    :cond_0
    return-void
.end method

.method private setupNickname()V
    .locals 5

    .prologue
    const-string v3, "setupNickname"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 1170
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_1

    .line 1172
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNickNames()Ljava/util/List;

    move-result-object v1

    .line 1175
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1176
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreNickname:Ljava/lang/String;

    .line 1180
    .end local v1    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .line 1181
    .local v0, "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    invoke-interface {v0}, Lcom/mcdonalds/app/storelocator/StoreLocationListener;->refreshSelectedStore()V

    goto :goto_0

    .line 1184
    .end local v0    # "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    :cond_1
    return-void
.end method

.method private shouldExpand(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "shouldExpand"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->canBeFavorited()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCurrentStoreSelectionMode:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isMapOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private startMainActivity()V
    .locals 3

    .prologue
    const-string v0, "startMainActivity"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/mcdonalds/app/MainActivity;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    const-string v1, "dashboard"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->showFragment(Ljava/lang/String;)V

    .line 1108
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    const-class v1, Lcom/mcdonalds/app/MainActivity;

    const-string v2, "dashboard"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startOrderActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "startOrderActivity"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1091
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 1094
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setFirstTimeOrdering(Z)V

    .line 1095
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    const-string v1, "menu_grid"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->showFragment(Ljava/lang/String;)V

    .line 1100
    :goto_0
    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    const-class v1, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    const-string v2, "menu_grid"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSignInActivity(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "startSignInActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    const-class v1, Lcom/mcdonalds/app/customer/SignInActivity;

    const-string v2, "signin"

    invoke-virtual {v0, v1, v2, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1112
    return-void
.end method

.method private startStoreLocatorFilters(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "startStoreLocatorFilters"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    const-class v1, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersActivity;

    const/16 v2, 0x7531

    invoke-virtual {v0, v1, p1, v2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 1116
    return-void
.end method

.method private trackAddFavorite(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v1, "trackAddFavorite"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    const-string v1, "/firstload"

    const-string v2, "Restaurant Saved Alert"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 993
    .local v0, "customArgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 994
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1000
    :goto_0
    const-string v1, "/firstload"

    const-string v2, "Continue"

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1001
    return-void

    .line 997
    :cond_0
    const-string v1, "Guest"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private updateFavoriteInfo(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 6
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v5, 0x0

    const-string v2, "updateFavoriteInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1693
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1694
    .local v0, "favorite":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_1

    .line 1696
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1697
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoritesData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 1698
    .local v1, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    if-eqz v1, :cond_0

    .line 1699
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 1700
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 1704
    .end local v1    # "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    :cond_0
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 1707
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDistance()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setDistance(D)V

    .line 1708
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreHours()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreHours(Ljava/util/List;)V

    .line 1715
    :goto_0
    return-void

    .line 1712
    :cond_1
    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 1713
    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFavoriteStores(Ljava/util/List;)V
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
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v3, "updateFavoriteStores"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 765
    .local v2, "storeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 767
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    .line 768
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 769
    .local v0, "existingStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setHasMobileOrdering(Ljava/lang/Boolean;)V

    .line 774
    .end local v0    # "existingStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 777
    .end local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    .line 778
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->refreshCurrentAndNearbyWithFavorites()V

    .line 779
    return-void
.end method

.method private updateMobileOrderingStatus(Ljava/util/List;)V
    .locals 5
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
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v2, "updateMobileOrderingStatus"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1635
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1664
    :cond_0
    :goto_0
    return-void

    .line 1639
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1640
    .local v1, "unknownStatusStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1641
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1642
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1646
    .end local v0    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1647
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getLastLocation()Landroid/location/Location;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/storelocator/StoreLocatorController$13;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$13;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->checkStoreListForOrderingSupport(Ljava/util/List;Landroid/location/Location;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 1662
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    goto :goto_0
.end method

.method private updateNearbyStoresWithSearchResponse(Ljava/util/List;)V
    .locals 11
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
    .local p1, "nearbySearchResponse":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "updateNearbyStoresWithSearchResponse"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1570
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1571
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 1572
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    .line 1586
    .end local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldFilterStoreResultsUsingGeneralStatus()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1587
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1588
    .local v3, "openStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1589
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1590
    .local v1, "day":I
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 1591
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1592
    .local v4, "operatingHours":[Ljava/lang/String;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isGeneralStatusIsOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v7, v4, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v4, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1593
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1575
    .end local v1    # "day":I
    .end local v3    # "openStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v4    # "operatingHours":[Ljava/lang/String;
    .end local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1576
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1577
    .local v2, "newStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v6, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 1579
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 1581
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    goto :goto_0

    .line 1583
    .end local v2    # "newStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    goto/16 :goto_0

    .line 1597
    .restart local v3    # "openStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_3
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1598
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1601
    .end local v3    # "openStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_4
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearByMap:Landroid/util/SparseArray;

    .line 1602
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1603
    .restart local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearByMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1604
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 1605
    .restart local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_5

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1606
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreHours()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreHours(Ljava/util/List;)V

    goto :goto_2

    .line 1610
    .end local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_6
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->refreshCurrentAndNearbyWithFavorites()V

    .line 1611
    return-void
.end method

.method private updateStoreStatus()V
    .locals 3

    .prologue
    const-string v1, "updateStoreStatus"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1152
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1153
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "EXTRA_SAVING_FAVORITE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    const-string v1, "StoreLocatorFragment.SAVING_FAVORITE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreId:Ljava/lang/Integer;

    .line 1158
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedNickname:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreState:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 1160
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->setupNickname()V

    .line 1162
    const-string v1, "EXTRA_SAVING_FAVORITE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1163
    const-string v1, "StoreLocatorFragment.SAVING_FAVORITE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1165
    :cond_0
    return-void
.end method

.method private updateStoresByAddress(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "showActivityIndicator"    # Z

    .prologue
    const/4 v3, 0x1

    const-string v0, "updateStoresByAddress"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    if-eqz p2, :cond_0

    .line 1489
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0906ff

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 1492
    :cond_0
    iput-boolean v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mIgnoreUserLocation:Z

    .line 1493
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1494
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->DEFAULT_RADIUS:Ljava/lang/Double;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->activeFilters:Ljava/util/List;

    new-instance v3, Lcom/mcdonalds/app/storelocator/StoreLocatorController$11;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$11;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresNearAddressWithinRadius(Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1550
    :goto_0
    return-void

    .line 1548
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    goto :goto_0
.end method

.method private updateStoresByCurrentStore(Z)V
    .locals 6
    .param p1, "showActivityIndicator"    # Z

    .prologue
    const-string v0, "updateStoresByCurrentStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1422
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1424
    if-eqz p1, :cond_0

    .line 1425
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0906ff

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1428
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->DEFAULT_RADIUS:Ljava/lang/Double;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->activeFilters:Ljava/util/List;

    new-instance v5, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 1427
    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresNearLatLongWithinRadius(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1484
    :goto_0
    return-void

    .line 1482
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/mcdonalds/app/storelocator/StoreLocationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .prologue
    const-string v0, "addListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding LocationListener multiple times!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    const-string v0, "ADD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange... listener added from class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public addStoreToFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 7
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .param p3, "nickName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorSection;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "successListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "addStoreToFavorites"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-eq p2, v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 574
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 576
    if-eqz p4, :cond_1

    .line 577
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p4, v2, v6, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    .line 639
    :goto_0
    return-void

    .line 586
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mLastFavorite:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mLastFavorite:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 587
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mLastFavorite:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 592
    .local v0, "favorite":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :goto_1
    if-eqz v0, :cond_4

    .line 594
    invoke-virtual {v0, p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 596
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v1, "storesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/ServiceUtils;->removeFavoriteStoresCache()V

    .line 600
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;

    invoke-direct {v4, p0, v0, p4}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 589
    .end local v0    # "favorite":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v1    # "storesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .restart local v0    # "favorite":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    goto :goto_1

    .line 637
    :cond_4
    const-string v2, "FAVORITE STORE null"

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addToFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 7
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "addToFavoritesClicked"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v6

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 1008
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    const-string v2, "/restaurant-locator"

    const-string v3, "Save to favorites"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreNickname:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1016
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1018
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1019
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "EXTRA_SAVING_FAVORITE"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1020
    const-string v2, "StoreLocatorFragment.SAVING_FAVORITE_ID"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1021
    const-string v2, "saving_fav_section"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1022
    const-string v2, "StoreLocatorFragment.SAVING_FAVORITE_NICKNAME"

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreNickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1024
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->startSignInActivity(Landroid/os/Bundle;)V

    .line 1043
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1031
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const v4, 0x7f0906a3

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 1032
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1033
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreNickname:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->addStoreToFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 1035
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreNickname:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->renameStoreInFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 1039
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const v4, 0x7f0906c3

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 1040
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreNickname:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->addStoreToFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public allowsFavoritingWithoutMobileOrdering()Z
    .locals 2

    .prologue
    const-string v0, "allowsFavoritingWithoutMobileOrdering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mAllowsFavoritingWithoutMobileOrdering:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCurrentStoreSelectionMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowsSelectionWithoutMobileOrdering()Z
    .locals 2

    .prologue
    const-string v0, "allowsSelectionWithoutMobileOrdering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mAllowsSelectionWithoutMobileOrdering:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCurrentStoreSelectionMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginOrderForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "beginOrderForStore"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mDismissOnPlaceOrder:Z

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 807
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->startOrderActivity()V

    goto :goto_0
.end method

.method public displayFilters(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    const-string v1, "displayFilters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "CONTROLLER_PASSER_KEY"

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string v1, "search_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->startStoreLocatorFilters(Landroid/os/Bundle;)V

    .line 460
    return-void
.end method

.method public displayStoreDetails(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 6
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const/4 v5, 0x1

    const-string v2, "displayStoreDetails"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 785
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_0

    .line 787
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 788
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extra_store_detail"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 789
    const-string v2, "extra_store_section"

    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    const-string v2, "extra_store_controller"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 791
    invoke-static {}, Lcom/mcdonalds/app/storelocator/StoresManager;->getInstance()Lcom/mcdonalds/app/storelocator/StoresManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mcdonalds/app/storelocator/StoresManager;->setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 793
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    const-class v3, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    const-string v4, "signin"

    const/16 v5, 0x1d

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 798
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 796
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const v3, 0x7f090200

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public eatHereClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 5
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v2, "eatHereClicked"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 898
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_0

    .line 900
    invoke-static {v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackStoreSelection(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 902
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 903
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->getCloseStatus(Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "closeSting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 905
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f0905d4

    const/4 v4, 0x0

    .line 906
    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f090717

    .line 907
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 908
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 909
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 920
    .end local v0    # "closeSting":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateCurrentStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 918
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->shouldExpand(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Z)V

    goto :goto_0
.end method

.method public filterNearbyBasedOnMobileOrdering()V
    .locals 2

    .prologue
    const-string v0, "filterNearbyBasedOnMobileOrdering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isFilterForMobileOrderNeeded:Z

    .line 1719
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    .line 1721
    return-void
.end method

.method public getActiveFilters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getActiveFilters"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1777
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->activeFilters:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "getCurrentStore"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDrawableResIDByString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "defaultResString"    # Ljava/lang/String;

    .prologue
    const-string v1, "getDrawableResIDByString"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 888
    .local v0, "resString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 889
    move-object v0, p2

    .line 891
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mcdonalds/app/util/UIUtils;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getFavoriteStores()Ljava/util/List;
    .locals 5
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
    const/4 v1, 0x0

    const-string v2, "getFavoriteStores"

    invoke-static {p0, v2, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 304
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    .line 306
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 308
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 313
    .end local v0    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-nez v2, :cond_1

    :goto_1
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 2

    .prologue
    const-string v0, "getLastLocation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getUserLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMapPinResID(Ljava/lang/Integer;)I
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const-string v0, "getMapPinResID"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 862
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getMapIconResID()I

    move-result v0

    return v0
.end method

.method public getNearByStores()Ljava/util/List;
    .locals 3
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
    const-string v1, "getNearByStores"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-boolean v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isFilterForMobileOrderNeeded:Z

    if-eqz v1, :cond_2

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyFilteredStores:Ljava/util/List;

    .line 320
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 322
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyFilteredStores:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyFilteredStores:Ljava/util/List;

    .line 329
    :goto_1
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    goto :goto_1
.end method

.method public getNickNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v5, "getNickNames"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.customer.presetStoreNames"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 838
    .local v3, "presets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v1, "nicknames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 840
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 841
    .local v2, "preset":Ljava/lang/String;
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 845
    .end local v2    # "preset":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 846
    .local v0, "availableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 847
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 848
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 852
    .end local v4    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    return-object v0
.end method

.method public getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "getOfferState"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->NO_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    return-object v0
.end method

.method public getSelectMapPinResID(Ljava/lang/Integer;)I
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const-string v0, "getSelectMapPinResID"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedMapIconResID()I

    move-result v0

    return v0
.end method

.method public getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "getSelectedStore"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreId:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 296
    :cond_0
    return-object v0
.end method

.method public getSelectedStoreId()Ljava/lang/Integer;
    .locals 2

    .prologue
    const-string v0, "getSelectedStoreId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelectedStoreNickName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getSelectedStoreNickName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .locals 2

    .prologue
    const-string v0, "getSelectedStoreSection"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    return-object v0
.end method

.method protected getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "getStore"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1615
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-ne p2, v0, :cond_0

    .line 1617
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 1628
    :goto_0
    return-object v0

    .line 1619
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1621
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    goto :goto_0

    .line 1623
    :cond_1
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearByMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 1625
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearByMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    goto :goto_0

    .line 1628
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStoreLocatorModule()Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .locals 2

    .prologue
    const-string v0, "getStoreLocatorModule"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1765
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    return-object v0
.end method

.method public infoClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "infoClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    const-string v0, "/restaurant-locator"

    const-string v1, "Info Icon"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->displayStoreDetails(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 1051
    return-void
.end method

.method public isAutoSelectClosestStore()Z
    .locals 2

    .prologue
    const-string v0, "isAutoSelectClosestStore"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mAutoSelectClosestStore:Z

    return v0
.end method

.method public isCurrentStoreSelectionMode()Z
    .locals 2

    .prologue
    const-string v0, "isCurrentStoreSelectionMode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1753
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCurrentStoreSelectionMode:Z

    return v0
.end method

.method public isMapOnly()Z
    .locals 2

    .prologue
    const-string v0, "isMapOnly"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1737
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mMapOnly:Z

    return v0
.end method

.method public locationServicesEnabled()Z
    .locals 2

    .prologue
    const-string v0, "locationServicesEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public myMcDonaldsClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 4
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v1, "myMcDonaldsClicked"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 928
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    .line 929
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->shouldExpand(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Z)V

    .line 931
    :cond_0
    return-void
.end method

.method public nickNameChangedOnStoreId(Ljava/lang/String;I)V
    .locals 11
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "storeId"    # I

    .prologue
    const-string v7, "nickNameChangedOnStoreId"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 172
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v7

    if-ne v7, p2, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 174
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v7, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 176
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 179
    :cond_0
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 180
    .local v1, "favorite":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 182
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v7, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    :cond_1
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoritesData:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 185
    .local v4, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    if-eqz v4, :cond_2

    .line 186
    invoke-virtual {v4, p1}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->setFavoriteNickName(Ljava/lang/String;)V

    .line 187
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoritesData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getFavoriteStores()Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 193
    .local v2, "favoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    if-ne v8, p2, :cond_3

    .line 194
    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 195
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v7, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setFavoriteStores(Ljava/util/List;)V

    .line 200
    .end local v2    # "favoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_4
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 201
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 202
    .local v6, "nearbyStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    if-ne v8, p2, :cond_5

    .line 203
    invoke-virtual {v6, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v6    # "nearbyStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_6
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .line 209
    .local v5, "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocationListener;->refreshSelectedStore()V

    goto :goto_1

    .line 211
    .end local v5    # "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    :cond_7
    return-void
.end method

.method public nickNameSelected(Ljava/lang/String;)V
    .locals 10
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    const-string v7, "nickNameSelected"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreNickname:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 217
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 218
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v7, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 221
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 222
    .local v1, "favorite":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 224
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v7, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    :cond_0
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoritesData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 227
    .local v4, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    if-eqz v4, :cond_1

    .line 228
    invoke-virtual {v4, p1}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->setFavoriteNickName(Ljava/lang/String;)V

    .line 229
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoritesData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getFavoriteStores()Ljava/util/List;

    move-result-object v3

    .line 234
    .local v3, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 235
    .local v2, "favoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 236
    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 237
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v7, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setFavoriteStores(Ljava/util/List;)V

    .line 242
    .end local v2    # "favoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_3
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    if-eqz v7, :cond_5

    .line 243
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 244
    .local v6, "nearbyStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 245
    invoke-virtual {v6, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v6    # "nearbyStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_5
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .line 251
    .local v5, "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocationListener;->refreshSelectedStore()V

    goto :goto_1

    .line 253
    .end local v5    # "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    :cond_6
    return-void
.end method

.method public nicknameClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 5
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v2, "nicknameClicked"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1123
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/storelocator/StoreNicknamingActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1124
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1125
    return-void
.end method

.method protected notifyObservers()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v2, "notifyObservers"

    invoke-static {p0, v2, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iput-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mIsRefreshing:Z

    .line 438
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .line 439
    .local v0, "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    invoke-interface {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreLocationListener;->onChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V

    goto :goto_0

    .line 442
    .end local v0    # "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    :cond_0
    iget-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mAutoSelectClosestStore:Z

    if-eqz v2, :cond_2

    .line 443
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object v1, v2

    .line 444
    .local v1, "preferredSelectedStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    if-eqz v1, :cond_2

    .line 445
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Z)V

    .line 448
    .end local v1    # "preferredSelectedStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    return-void
.end method

.method public placeOrderClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 7
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "placeOrderClicked"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    iget-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCurrentStoreSelectionMode:Z

    if-eqz v2, :cond_0

    .line 1064
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "/firstload"

    .line 1065
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "On click"

    .line 1066
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "Choose another"

    .line 1067
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 1068
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 1079
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    :goto_0
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 1081
    iget-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCurrentStoreSelectionMode:Z

    if-eqz v2, :cond_1

    .line 1082
    invoke-virtual {p0, v6, v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 1083
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->requestUpdateStoresByCurrentLocation(Z)V

    .line 1087
    :goto_1
    return-void

    .line 1070
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1071
    .local v1, "customArgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1072
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "/restaurant-locator"

    .line 1073
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "On click"

    .line 1074
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "Place order"

    .line 1075
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 1076
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCustom(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 1077
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .restart local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    goto :goto_0

    .line 1085
    .end local v1    # "customArgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->beginOrderForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto :goto_1
.end method

.method public removeFromFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "removeFromFavoritesClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    const-string v0, "/restaurant-locator"

    const-string v1, "Remove from favorites"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->removeStoreFromFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1133
    return-void
.end method

.method public removeListener(Lcom/mcdonalds/app/storelocator/StoreLocationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .prologue
    const-string v0, "removeListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Removing LocationListener that does not exist!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 278
    const-string v0, "REMOVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange... listener removed from class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method public removeStoreFromFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 9
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorSection;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "successListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "removeStoreFromFavorites"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    aput-object p2, v5, v8

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-eq p2, v4, :cond_2

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 647
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    .line 648
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v3, :cond_1

    .line 650
    invoke-virtual {v3, v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v3, v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 653
    if-eqz p3, :cond_0

    .line 654
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p3, v4, v7, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 657
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    .line 702
    .end local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 665
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 666
    .local v1, "favorite":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mLastFavorite:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/util/ServiceUtils;->removeFavoriteStoresCache()V

    .line 672
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$3;

    invoke-direct {v0, p0, v1, p3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$3;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 698
    .local v0, "deleteListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 699
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    .line 698
    invoke-virtual {v4, v2, v5, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->deleteFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method public renameStoreInFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 9
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .param p3, "nickName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorSection;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "successListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v0, "renameStoreInFavorites"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v7

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const/4 v4, 0x3

    aput-object p4, v1, v4

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-eq p2, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 710
    const-string v0, "StoreLocatorController"

    const-string v1, "Attempting to rename non-favorite"

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 717
    .local v2, "favoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v3

    .line 719
    .local v3, "previousNickName":Ljava/lang/String;
    invoke-virtual {v2, p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/ServiceUtils;->removeFavoriteStoresCache()V

    .line 722
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    new-array v0, v7, [Lcom/mcdonalds/sdk/modules/storelocator/Store;

    aput-object v2, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v8

    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$4;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$4;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Lcom/mcdonalds/sdk/modules/storelocator/Store;Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v6, v7, v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->renameFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method public requestUpdateStoresByAddress(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "showActivityIndicator"    # Z

    .prologue
    const-string v0, "requestUpdateStoresByAddress"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByAddress(Ljava/lang/String;Z)V

    .line 826
    return-void
.end method

.method public requestUpdateStoresByCurrentLocation(Z)V
    .locals 4
    .param p1, "showActivityIndicator"    # Z

    .prologue
    const-string v0, "requestUpdateStoresByCurrentLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByLocation(Z)V

    .line 817
    return-void
.end method

.method public requestUpdateStoresByCurrentStore(Z)V
    .locals 4
    .param p1, "showActivityIndicator"    # Z

    .prologue
    const-string v0, "requestUpdateStoresByCurrentStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByCurrentStore(Z)V

    .line 821
    return-void
.end method

.method public requestUpdateStoresByScrolledLocation(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V
    .locals 3
    .param p1, "newLocation"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .prologue
    const-string v0, "requestUpdateStoresByScrolledLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByLatLng(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V

    .line 831
    return-void
.end method

.method public saveToFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 6
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v3, "saveToFavoritesClicked"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    iget-boolean v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCurrentStoreSelectionMode:Z

    if-eqz v3, :cond_2

    .line 940
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 942
    new-instance v2, Lcom/mcdonalds/app/storelocator/StoreLocatorController$5;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$5;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 955
    .local v2, "onClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f0905d4

    .line 956
    invoke-virtual {v3, v4, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f0906b1

    .line 957
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f09082b

    .line 958
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 959
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 960
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 962
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->trackAddFavorite(Ljava/lang/Integer;)V

    .line 964
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v3, :cond_0

    .line 965
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 966
    .local v1, "newStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 968
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 973
    .end local v1    # "newStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.mcdonalds.app.REMOVE_FIND_STORE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 986
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    :goto_0
    return-void

    .line 979
    :cond_2
    sget-object v3, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedNickname:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreState:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 984
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->setupNickname()V

    goto :goto_0
.end method

.method public selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "selectStore"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isMapOnly()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Z)V

    .line 512
    return-void
.end method

.method public selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Z)V
    .locals 12
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .param p3, "expand"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    const-string v8, "selectStore"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v7

    aput-object p2, v9, v0

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/Boolean;

    invoke-direct {v11, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v11, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreId:Ljava/lang/Integer;

    .line 519
    .local v3, "previousID":Ljava/lang/Integer;
    if-nez v3, :cond_0

    iget-object v8, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v8, :cond_0

    .line 520
    iget-object v8, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 521
    iget-object v8, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 525
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 527
    .local v4, "previousSection":Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreId:Ljava/lang/Integer;

    .line 528
    iput-object p2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreSection:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 530
    if-nez p1, :cond_3

    .line 532
    iput-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreState:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 559
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "previousStoreIdString":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .line 561
    .local v2, "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    invoke-interface {v2, p0, v5, v4, p3}, Lcom/mcdonalds/app/storelocator/StoreLocationListener;->onSelectedStoreChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Ljava/lang/String;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Z)V

    goto :goto_1

    .line 537
    .end local v2    # "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    .end local v5    # "previousStoreIdString":Ljava/lang/String;
    :cond_3
    sget-object v8, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Normal:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    iput-object v8, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreState:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    .line 540
    .local v6, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v6, :cond_1

    .line 541
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_4

    move v1, v0

    .line 542
    .local v1, "isFavorite":Z
    :goto_2
    if-eqz p3, :cond_8

    .line 543
    if-eqz v1, :cond_6

    .line 544
    iget-boolean v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCurrentStoreSelectionMode:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedSelectCurrent:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    :goto_3
    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreState:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0

    .end local v1    # "isFavorite":Z
    :cond_4
    move v1, v7

    .line 541
    goto :goto_2

    .line 544
    .restart local v1    # "isFavorite":Z
    :cond_5
    sget-object v7, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedFavoritePlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_3

    .line 546
    :cond_6
    iget-boolean v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCurrentStoreSelectionMode:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedSelectCurrent:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    :goto_4
    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreState:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0

    :cond_7
    sget-object v7, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedPlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_4

    .line 549
    :cond_8
    iget-object v8, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 550
    .local v0, "isCurrent":Z
    :goto_5
    if-eqz v1, :cond_b

    .line 551
    if-eqz v0, :cond_a

    sget-object v7, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->CurrentAndFavorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    :goto_6
    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreState:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0

    .end local v0    # "isCurrent":Z
    :cond_9
    move v0, v7

    .line 549
    goto :goto_5

    .line 551
    .restart local v0    # "isCurrent":Z
    :cond_a
    sget-object v7, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Favorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_6

    .line 553
    :cond_b
    if-eqz v0, :cond_c

    sget-object v7, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Current:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    :goto_7
    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreState:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0

    :cond_c
    sget-object v7, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Normal:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_7

    .line 564
    .end local v0    # "isCurrent":Z
    .end local v1    # "isFavorite":Z
    .end local v6    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .restart local v5    # "previousStoreIdString":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method public setActiveFilters(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newfilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "setActiveFilters"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1781
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->activeFilters:Ljava/util/List;

    .line 1782
    return-void
.end method

.method public setAllowsSelectionWithoutMobileOrdering(Z)V
    .locals 4
    .param p1, "allowsSelectionWithoutMobileOrdering"    # Z

    .prologue
    const-string v0, "setAllowsSelectionWithoutMobileOrdering"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mAllowsSelectionWithoutMobileOrdering:Z

    .line 432
    return-void
.end method

.method public setIgnoreUserLocation(Z)V
    .locals 4
    .param p1, "ignore"    # Z

    .prologue
    const-string v0, "setIgnoreUserLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1745
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mIgnoreUserLocation:Z

    .line 1746
    return-void
.end method

.method public setMapOnly(Z)V
    .locals 4
    .param p1, "mapOnly"    # Z

    .prologue
    const-string v0, "setMapOnly"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1749
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mMapOnly:Z

    .line 1750
    return-void
.end method

.method public setSelectedStoreNickName(Ljava/lang/String;)V
    .locals 3
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    const-string v0, "setSelectedStoreNickName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreNickname:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public shouldIgnoreUserLocation()Z
    .locals 2

    .prologue
    const-string v0, "shouldIgnoreUserLocation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1741
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mIgnoreUserLocation:Z

    return v0
.end method

.method public skipClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 4
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const/4 v3, 0x0

    const-string v0, "skipClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    invoke-static {}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackSkipFavoritesButton()V

    .line 1057
    invoke-virtual {p0, v3, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 1058
    return-void
.end method

.method public sortStoresByDistance(Ljava/util/List;)V
    .locals 4
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
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v1, "sortStoresByDistance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1554
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 1557
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1558
    new-instance v1, Lcom/mcdonalds/app/storelocator/StoreLocatorController$12;

    invoke-direct {v1, p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$12;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Landroid/location/Location;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1566
    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 5
    .param p1, "hasAccessFineLocationPermission"    # Z

    .prologue
    const/4 v4, 0x1

    const-string v0, "start"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const-string v0, "storeLocator"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 161
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 162
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 164
    iput-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFetchedModules:Z

    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->refreshStores()V

    .line 168
    :cond_0
    return-void
.end method

.method public stateForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    .locals 5
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const/4 v0, 0x0

    const-string v2, "stateForStore"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 355
    if-nez p2, :cond_0

    .line 356
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Normal:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 400
    :goto_0
    return-object v1

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreId:Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mSelectedStoreState:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0

    .line 364
    :cond_1
    const/4 v1, 0x0

    .line 365
    .local v1, "state":Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorController$14;->$SwitchMap$com$mcdonalds$app$storelocator$StoreLocatorSection:[I

    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 367
    :pswitch_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 369
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->CurrentAndFavorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0

    .line 372
    :cond_2
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Current:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 374
    goto :goto_0

    .line 377
    :pswitch_1
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-nez v2, :cond_3

    .line 378
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :goto_1
    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 380
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->CurrentAndFavorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0

    .line 377
    .end local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    goto :goto_1

    .line 382
    .restart local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_4
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Favorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0

    .line 388
    .end local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :pswitch_2
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-nez v2, :cond_5

    .line 389
    .restart local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :goto_2
    if-eqz v0, :cond_6

    .line 390
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 391
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Current:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0

    .line 388
    .end local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    goto :goto_2

    .line 393
    .restart local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_6
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Normal:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public undoFilterBasedOnMobileOrdering()V
    .locals 2

    .prologue
    const-string v0, "undoFilterBasedOnMobileOrdering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isFilterForMobileOrderNeeded:Z

    .line 1725
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    .line 1726
    return-void
.end method

.method public updateCurrentStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 10
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "updateCurrentStore"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object p2, v5, v9

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    .line 467
    .local v3, "previousStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-ne p2, v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mFavoriteMap:Landroid/util/SparseArray;

    .line 468
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object v2, v4

    .line 470
    .local v2, "newCurrentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09040e

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 471
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mcdonalds/sdk/services/data/provider/Contract$CurrentStore;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Lcom/mcdonalds/app/storelocator/StoreLocatorController$1;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Landroid/os/Handler;)V

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 487
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 489
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 491
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->isOrderingAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v4

    if-nez v4, :cond_0

    .line 494
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(Ljava/lang/String;)V

    .line 498
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v4

    const-string v5, "pref_first_time_ordering"

    invoke-virtual {v4, v5, v9}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 501
    if-nez v3, :cond_2

    const/4 v0, 0x0

    .line 502
    .local v0, "IdString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .line 503
    .local v1, "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    invoke-interface {v1, p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocationListener;->onCurrentStoreChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Ljava/lang/String;)V

    goto :goto_2

    .line 468
    .end local v0    # "IdString":Ljava/lang/String;
    .end local v1    # "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    .end local v2    # "newCurrentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mNearByMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object v2, v4

    goto/16 :goto_0

    .line 501
    .restart local v2    # "newCurrentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 505
    .restart local v0    # "IdString":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected updateStoresByLatLng(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V
    .locals 6
    .param p1, "newLocation"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .prologue
    const-string v0, "updateStoresByLatLng"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1313
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0906ff

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 1316
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iget-wide v2, p1, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p1, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->DEFAULT_RADIUS:Ljava/lang/Double;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->activeFilters:Ljava/util/List;

    new-instance v5, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresNearLatLongWithinRadius(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1360
    return-void
.end method

.method protected updateStoresByLocation(Z)V
    .locals 4
    .param p1, "showActivityIndicator"    # Z

    .prologue
    const-string v0, "updateStoresByLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1364
    if-eqz p1, :cond_0

    .line 1365
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0906ff

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->DEFAULT_RADIUS:Ljava/lang/Double;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->activeFilters:Ljava/util/List;

    new-instance v3, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresNearCurrentLocationWithinRadius(Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1418
    return-void
.end method
