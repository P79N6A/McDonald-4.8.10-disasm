.class public Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "StoreLocatorMapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/mcdonalds/app/storelocator/MapManager$Callback;
.implements Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;
.implements Lcom/mcdonalds/app/storelocator/StoreLocationListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mClosestStoreRefreshed:Z

.field private mContractSymbol:Landroid/widget/ImageButton;

.field private mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

.field private mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

.field private mIgnoreViewPagerChange:Z

.field private mInitialCameraPosition:Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

.field private mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

.field private mIsFirstLoad:Z

.field private mIsOffersMode:Z

.field private mLocationButton:Landroid/widget/Button;

.field private mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

.field private mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

.field private mMapPanBegan:Z

.field private mMapRootViewGroup:Landroid/view/ViewGroup;

.field private final mMarkerStoresMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewLocationFadeInEndListener:Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;

.field private final mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

.field private final mOnMapClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

.field private final mOnMarkerClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

.field private mPagerAnimating:Z

.field private mPagerAnimatingNonFavorite:Z

.field private mPagerClickCatcher:Landroid/view/View;

.field private mPagerContainer:Landroid/view/ViewGroup;

.field private mPagerContainerNonFavorite:Landroid/view/ViewGroup;

.field protected mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

.field private mPagerHeightNonFavorite:F

.field private mPagerY:F

.field private mPriorLatLng:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

.field private mSearchHereButton:Landroid/widget/Button;

.field private mShowingNonPager:Z

.field private mSkipZoom:Z

.field private mSortedStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreMarkersMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/app/storelocator/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMarkerStoresMap:Ljava/util/Map;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mStoreMarkersMap:Landroid/util/SparseArray;

    .line 722
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$6;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mOnMapClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    .line 752
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$7;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$7;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mOnMarkerClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    .line 769
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    .line 821
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$9;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$9;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mNewLocationFadeInEndListener:Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerClickCatcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;F)F
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # F

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerHeightNonFavorite:F

    return p1
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->toggleNonPager()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->hideNonFavoritePager()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->hidePager()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Ljava/util/Map;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMarkerStoresMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getStoreSection(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapPanBegan:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapPanBegan:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/maps/McdMap;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$1900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->showNonFavorite()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$2000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPriorLatLng:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$2002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPriorLatLng:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$2100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->showSearchHereButton()V

    return-void
.end method

.method static synthetic access$2202(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$2202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInitialCameraPosition:Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$2300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->isCurrent(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$2400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mIgnoreViewPagerChange:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$2402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mIgnoreViewPagerChange:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$2502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerAnimating:Z

    return p1
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v1, "access$2600"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$2702"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerAnimatingNonFavorite:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/support/v4/view/ViewPager;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$500"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->showPager(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;F)F
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
    .param p1, "x1"    # F

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerY:F

    return p1
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorMapFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainerNonFavorite:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private configMap()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "configMap"

    invoke-static {p0, v3, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    new-instance v4, Lcom/mcdonalds/app/storelocator/MapWindowAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/app/storelocator/MapWindowAdapter;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v4}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setInfoWindowAdapter(Lcom/mcdonalds/app/storelocator/maps/McdMap$InfoWindowAdapter;)V

    .line 379
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v3, v6}, Lcom/mcdonalds/app/storelocator/MapManager;->setCallback(Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    .line 381
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->initMapListeners()V

    .line 383
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v3}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->configure()V

    .line 385
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    instance-of v3, v3, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setMyLocationEnabled(Z)V

    .line 390
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->locationServicesEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 393
    .local v0, "criteria":Landroid/location/Criteria;
    invoke-virtual {v0, v7}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 395
    new-instance v1, Lcom/mcdonalds/app/storelocator/SimpleLocationListener;

    invoke-direct {v1, p0, v7}, Lcom/mcdonalds/app/storelocator/SimpleLocationListener;-><init>(Lcom/mcdonalds/app/storelocator/SimpleLocationListener$LocationListener;I)V

    .line 397
    .local v1, "listener":Lcom/mcdonalds/app/storelocator/SimpleLocationListener;
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "location"

    .line 398
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 400
    .local v2, "manager":Landroid/location/LocationManager;
    invoke-virtual {v2, v0, v1, v6}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 402
    .end local v0    # "criteria":Landroid/location/Criteria;
    .end local v1    # "listener":Lcom/mcdonalds/app/storelocator/SimpleLocationListener;
    .end local v2    # "manager":Landroid/location/LocationManager;
    :cond_1
    return-void
.end method

.method private createMarkers(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v6, "createMarkers"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMarkerStoresMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 1037
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mStoreMarkersMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 1039
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v1, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;>;"
    const/4 v5, 0x0

    .line 1044
    .local v5, "targetMarker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1046
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1047
    .local v3, "selected":Z
    new-instance v2, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;-><init>()V

    .line 1049
    .local v2, "options":Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;
    new-instance v6, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->position(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    .line 1050
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 1051
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectMapPinResID(Ljava/lang/Integer;)I

    move-result v6

    .line 1050
    :goto_1
    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->icon(I)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    .line 1055
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v6, v2}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->addMarker(Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v0

    .line 1056
    .local v0, "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    if-eqz v0, :cond_0

    .line 1057
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMarkerStoresMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mStoreMarkersMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v6, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1060
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1061
    move-object v5, v0

    goto :goto_0

    .line 1051
    .end local v0    # "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 1052
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getMapPinResID(Ljava/lang/Integer;)I

    move-result v6

    goto :goto_1

    .line 1067
    .end local v2    # "options":Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;
    .end local v3    # "selected":Z
    .end local v4    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    if-eqz v5, :cond_3

    .line 1068
    invoke-virtual {v5}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->showInfoWindow()V

    .line 1071
    :cond_3
    return-object v1
.end method

.method private filterCurrentLocation(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)Ljava/util/List;
    .locals 7
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "filterCurrentLocation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v1, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getFavoriteStores()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 477
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getFavoriteStores()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v0

    .line 481
    .local v0, "currentId":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 482
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 484
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 485
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 490
    .end local v0    # "currentId":I
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    return-object v1
.end method

.method private getStoreSection(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .locals 3
    .param p1, "current"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "getStoreSection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->isFavorite(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    goto :goto_0
.end method

.method private getUserLocation()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "getUserLocation"

    invoke-static {p0, v2, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1000
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v2}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->getUserLocation()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->getUserLocation()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    .line 1016
    :cond_0
    :goto_0
    return-object v1

    .line 1004
    :cond_1
    const/4 v0, 0x0

    .line 1007
    .local v0, "location":Landroid/location/Location;
    :try_start_0
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getUserLocation()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1012
    :goto_1
    if-eqz v0, :cond_0

    .line 1013
    invoke-static {v0}, Lcom/mcdonalds/app/util/LocationUtils;->toLatLng(Landroid/location/Location;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private getZoomLevel(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)F
    .locals 8
    .param p1, "location"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .prologue
    const-string v0, "getZoomLevel"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 991
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 992
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 994
    const-wide v0, 0x40c1940000000000L    # 9000.0

    iget v2, v7, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    iget-wide v4, p1, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->latitude:D

    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/app/util/LocationUtils;->getZoomLevelForRadius(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private hideNonFavoritePager()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const-string v4, "hideNonFavoritePager"

    const/4 v6, 0x0

    invoke-static {p0, v4, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    iget-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerAnimatingNonFavorite:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerHeightNonFavorite:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainerNonFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1275
    .local v2, "parent":Landroid/view/View;
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainerNonFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 1276
    .local v1, "origY":F
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->isCurrentStoreSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x28

    :goto_1
    invoke-static {v7, v4}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v4

    sub-int v4, v6, v4

    int-to-float v0, v4

    .line 1278
    .local v0, "newY":F
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainerNonFavorite:Landroid/view/ViewGroup;

    const-string v6, "y"

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v1, v7, v5

    const/4 v8, 0x1

    aput v0, v7, v8

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1279
    .local v3, "transAnimation":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1280
    new-instance v4, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$14;

    invoke-direct {v4, p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$14;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1307
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 1309
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isMapOnly()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1310
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerClickCatcher:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1311
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerClickCatcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 1314
    :cond_2
    iput-boolean v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mShowingNonPager:Z

    goto :goto_0

    .end local v0    # "newY":F
    .end local v3    # "transAnimation":Landroid/animation/ObjectAnimator;
    :cond_3
    move v4, v5

    .line 1276
    goto :goto_1
.end method

.method private hidePager()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-string v4, "hidePager"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1227
    iget-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerAnimating:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1232
    .local v2, "parent":Landroid/view/View;
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 1233
    .local v1, "origY":F
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x28

    invoke-static {v5, v6}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 1235
    .local v0, "newY":F
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    const-string v5, "y"

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v1, v6, v8

    const/4 v7, 0x1

    aput v0, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1236
    .local v3, "transAnimation":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1237
    new-instance v4, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;

    invoke-direct {v4, p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1262
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 1264
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerClickCatcher:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initMapListeners()V
    .locals 2

    .prologue
    const-string v0, "initMapListeners"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mOnMapClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setOnMapClickListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mOnMarkerClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setOnMarkerClickListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setOnCameraChangeListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;)V

    .line 410
    return-void
.end method

.method private isCurrent(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isCurrent"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1075
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    .line 1076
    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->includesCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 1077
    invoke-interface {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1075
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1077
    goto :goto_0
.end method

.method private isFavorite(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isFavorite"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private refresh()V
    .locals 3

    .prologue
    const-string v1, "refresh"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 416
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    if-eqz v1, :cond_3

    .line 419
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    if-eqz v1, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->refreshAdapterStores()V

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isAutoSelectClosestStore()Z

    move-result v0

    .line 424
    .local v0, "lookingForClosestStore":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mClosestStoreRefreshed:Z

    if-nez v1, :cond_2

    :cond_1
    if-nez v0, :cond_5

    .line 426
    :cond_2
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->refreshMarkers()V

    .line 429
    iget-boolean v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSkipZoom:Z

    if-nez v1, :cond_4

    .line 430
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->updateMapZoom()V

    .line 441
    .end local v0    # "lookingForClosestStore":Z
    :cond_3
    :goto_0
    return-void

    .line 432
    .restart local v0    # "lookingForClosestStore":Z
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSkipZoom:Z

    .line 433
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 437
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mClosestStoreRefreshed:Z

    goto :goto_0
.end method

.method private refreshAdapterStores()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v2, "refreshAdapterStores"

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 453
    .local v0, "includesCurrent":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 454
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->filterCurrentLocation(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMobileOrderFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 466
    :goto_2
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->setIncludesCurrent(Z)V

    .line 467
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->setStores(Ljava/util/List;)V

    .line 468
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->notifyDataSetChanged()V

    .line 469
    return-void

    .end local v0    # "includesCurrent":Z
    :cond_1
    move v0, v3

    .line 452
    goto :goto_0

    .line 457
    .restart local v0    # "includesCurrent":Z
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getFavoriteStores()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getFavoriteStores()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 464
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMobileOrderFilterLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private refreshMarkers()V
    .locals 9

    .prologue
    const-string v7, "refreshMarkers"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 859
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    if-eqz v7, :cond_4

    .line 861
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v7}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->clear()V

    .line 863
    new-instance v6, Ljava/util/TreeSet;

    new-instance v7, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$10;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$10;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    invoke-direct {v6, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 879
    .local v6, "storeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getNearByStores()Ljava/util/List;

    move-result-object v3

    .line 880
    .local v3, "nearByStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v2, "nearByStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 883
    .local v1, "nearByMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 885
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 887
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v1, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 890
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 894
    .end local v4    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getFavoriteStores()Ljava/util/List;

    move-result-object v0

    .line 896
    .local v0, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 898
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 902
    .restart local v4    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 903
    .local v5, "storeId":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 906
    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 907
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 911
    :cond_1
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 916
    .end local v4    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v5    # "storeId":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 917
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSortedStores:Ljava/util/List;

    .line 921
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSortedStores:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->createMarkers(Ljava/util/List;)Ljava/util/List;

    .line 923
    .end local v0    # "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v1    # "nearByMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v2    # "nearByStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "nearByStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v6    # "storeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_4
    return-void
.end method

.method private searchByCurrentLocation()V
    .locals 3

    .prologue
    const-string v0, "searchByCurrentLocation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->requestUpdateStoresByCurrentLocation(Z)V

    .line 719
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090378

    .line 707
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0904fe

    .line 708
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$5;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$5;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    .line 709
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private searchHere()V
    .locals 4

    .prologue
    const-string v1, "searchHere"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    .line 685
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 686
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$4;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$4;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    .line 687
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 694
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->getCameraPosition()Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v1

    iget-object v0, v1, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->target:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 695
    .local v0, "mapCenter":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    if-eqz v0, :cond_0

    .line 696
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSkipZoom:Z

    .line 697
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->requestUpdateStoresByScrolledLocation(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V

    .line 699
    :cond_0
    return-void
.end method

.method private setMarkerIcon(Lcom/mcdonalds/app/storelocator/maps/model/Marker;IZ)V
    .locals 5
    .param p1, "marker"    # Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .param p2, "id"    # I
    .param p3, "selected"    # Z

    .prologue
    const-string v1, "setMarkerIcon"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectMapPinResID(Ljava/lang/Integer;)I

    move-result v0

    .line 640
    .local v0, "resourceId":I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->setIcon(I)V

    .line 641
    return-void

    .line 639
    .end local v0    # "resourceId":I
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getMapPinResID(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method private showNonFavorite()V
    .locals 3

    .prologue
    const-string v1, "showNonFavorite"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf0

    .line 747
    .local v0, "yTarget":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->updateNonFavoritePagerHeight(I)V

    .line 748
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mShowingNonPager:Z

    .line 749
    return-void

    .line 746
    .end local v0    # "yTarget":I
    :cond_0
    const/16 v0, 0xb4

    goto :goto_0
.end method

.method private showPager(Z)V
    .locals 4
    .param p1, "shouldExpand"    # Z

    .prologue
    const-string v0, "showPager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerClickCatcher:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 580
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->hideNonFavoritePager()V

    .line 581
    if-eqz p1, :cond_0

    const/16 v0, 0xf0

    :goto_0
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->updatePagerHeight(I)V

    .line 582
    return-void

    .line 581
    :cond_0
    const/16 v0, 0xb4

    goto :goto_0
.end method

.method private showSearchHereButton()V
    .locals 4

    .prologue
    const-string v0, "showSearchHereButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mIsOffersMode:Z

    if-eqz v0, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.storelocator.hideSearchHere"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    .line 810
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 813
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 815
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 816
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mNewLocationFadeInEndListener:Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;

    .line 817
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private toggleNonPager()V
    .locals 2

    .prologue
    const-string v0, "toggleNonPager"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mShowingNonPager:Z

    if-eqz v0, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->hideNonFavoritePager()V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->showNonFavorite()V

    goto :goto_0
.end method

.method private updateMapSelection(Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 7
    .param p1, "previousStoreId"    # Ljava/lang/Integer;
    .param p2, "selectedStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v3, "updateMapSelection"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    if-eqz p1, :cond_0

    .line 588
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mStoreMarkersMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    .line 591
    .local v0, "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    if-eqz v0, :cond_0

    .line 593
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 594
    .local v1, "previousId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->setMarkerIcon(Lcom/mcdonalds/app/storelocator/maps/model/Marker;IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 602
    .end local v0    # "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .end local v1    # "previousId":I
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 603
    .restart local v0    # "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    if-eqz p2, :cond_1

    .line 604
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mStoreMarkersMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    check-cast v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    .line 607
    .restart local v0    # "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 610
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-direct {p0, v0, v3, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->setMarkerIcon(Lcom/mcdonalds/app/storelocator/maps/model/Marker;IZ)V

    .line 613
    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->showInfoWindow()V

    .line 615
    const/4 v2, 0x0

    .line 617
    .local v2, "userLocation":Landroid/location/Location;
    :try_start_1
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getUserLocation()Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 620
    :goto_1
    if-eqz v2, :cond_3

    .line 621
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/MapUtils;->with(Landroid/content/Context;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .line 622
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->map(Lcom/mcdonalds/app/storelocator/maps/McdMap;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v3

    .line 623
    invoke-virtual {v3, p2}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->store(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v3

    .line 624
    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->userLocation(Landroid/location/Location;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v3

    const/16 v4, 0x3c

    .line 625
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->margin(I)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v3

    .line 626
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->move()V

    .line 628
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v3}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->getCameraPosition()Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInitialCameraPosition:Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    .line 633
    :goto_2
    iput-boolean v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mIsFirstLoad:Z

    .line 635
    .end local v2    # "userLocation":Landroid/location/Location;
    :cond_2
    return-void

    .line 630
    .restart local v2    # "userLocation":Landroid/location/Location;
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->getPosition()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-interface {v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->animateCamera(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;F)V

    goto :goto_2

    .line 618
    :catch_0
    move-exception v3

    goto :goto_1

    .line 595
    .end local v2    # "userLocation":Landroid/location/Location;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private updateMapZoom()V
    .locals 6

    .prologue
    const-string v4, "updateMapZoom"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    if-eqz v4, :cond_1

    .line 935
    const/4 v0, 0x0

    .line 938
    .local v0, "epicenter":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInitialCameraPosition:Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    if-eqz v4, :cond_3

    .line 939
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSortedStores:Ljava/util/List;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSortedStores:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 940
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mStoreMarkersMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 941
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mStoreMarkersMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->getPosition()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v0

    .line 943
    :cond_0
    if-eqz v0, :cond_2

    .line 944
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getZoomLevel(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)F

    move-result v3

    .line 945
    .local v3, "zoom":F
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v4, v0, v3}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->animateCamera(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;F)V

    .line 986
    .end local v0    # "epicenter":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v3    # "zoom":F
    :cond_1
    :goto_0
    return-void

    .line 947
    .restart local v0    # "epicenter":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .restart local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInitialCameraPosition:Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    invoke-interface {v4, v5}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->moveCamera(Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)V

    goto :goto_0

    .line 951
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_3
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSortedStores:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 952
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->getCameraPosition()Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 953
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->getCameraPosition()Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v4

    iget-object v0, v4, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->target:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 955
    :cond_4
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->shouldIgnoreUserLocation()Z

    move-result v4

    if-nez v4, :cond_7

    .line 957
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getUserLocation()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    .line 958
    .local v1, "location":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    if-eqz v1, :cond_5

    .line 959
    move-object v0, v1

    .line 977
    .end local v1    # "location":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 979
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getZoomLevel(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)F

    move-result v3

    .line 980
    .restart local v3    # "zoom":F
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v4, v0, v3}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->animateCamera(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;F)V

    .line 983
    .end local v3    # "zoom":F
    :cond_6
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->setIgnoreUserLocation(Z)V

    goto :goto_0

    .line 964
    :cond_7
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSortedStores:Ljava/util/List;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSortedStores:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 965
    .restart local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mStoreMarkersMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 966
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mStoreMarkersMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->getPosition()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v0

    goto :goto_1

    .line 974
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_8
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getUserLocation()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v0

    goto :goto_1
.end method

.method private updateNonFavoritePagerHeight(I)V
    .locals 11
    .param p1, "heightDP"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "updateNonFavoritePagerHeight"

    new-array v7, v10, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    iget-boolean v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerAnimatingNonFavorite:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerHeightNonFavorite:F

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainerNonFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1184
    .local v3, "parent":Landroid/view/View;
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainerNonFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    .line 1185
    .local v2, "origY":F
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v0

    .line 1186
    .local v0, "desiredHeightPixels":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v6, v0

    int-to-float v1, v6

    .line 1188
    .local v1, "newY":F
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainerNonFavorite:Landroid/view/ViewGroup;

    const-string v7, "y"

    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v2, v8, v9

    aput v1, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1190
    .local v5, "transAnimation":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1191
    .local v4, "set":Landroid/animation/AnimatorSet;
    new-instance v6, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;

    invoke-direct {v6, p0, p1, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;IF)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1218
    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1219
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1220
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private updatePagerHeight(I)V
    .locals 11
    .param p1, "heightDP"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "updatePagerHeight"

    new-array v7, v10, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    iget-boolean v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerAnimating:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerY:F

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1133
    .local v3, "parent":Landroid/view/View;
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    .line 1134
    .local v2, "origY":F
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v0

    .line 1135
    .local v0, "desiredHeightPixels":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v6, v0

    int-to-float v1, v6

    .line 1137
    .local v1, "newY":F
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    const-string v7, "y"

    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v2, v8, v9

    aput v1, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1139
    .local v5, "transAnimation":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1140
    .local v4, "set":Landroid/animation/AnimatorSet;
    new-instance v6, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$11;

    invoke-direct {v6, p0, p1, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$11;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;IF)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1169
    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1170
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1171
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method


# virtual methods
.method public clearZoomFlag()V
    .locals 2

    .prologue
    const-string v0, "clearZoomFlag"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSkipZoom:Z

    .line 446
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "onActivityCreated"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 302
    new-instance v0, Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mcdonalds/app/storelocator/MapManager;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 304
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f11028d

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    .line 305
    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/MapManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 308
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/storelocator/MapManager;->setCallback(Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V

    .line 309
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setOnCameraChangeListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;)V

    .line 312
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1320
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1322
    const/16 v1, 0x16

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1324
    const-string v1, "name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, "newName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-ne v1, v2, :cond_1

    .line 1330
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 1331
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v3

    .line 1330
    invoke-interface {v1, v2, v3, v0, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->addStoreToFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1339
    .end local v0    # "newName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1333
    .restart local v0    # "newName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 1334
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v3

    .line 1333
    invoke-interface {v1, v2, v3, v0, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->renameStoreInFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    const-string v0, "onAttach"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .prologue
    const-string v0, "onChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->refresh()V

    .line 496
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mLocationButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 673
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->searchByCurrentLocation()V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 675
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->searchHere()V

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mContractSymbol:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "StoreLocatorMapFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "StoreLocatorMapFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onCreate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getController()Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    instance-of v0, v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mIsOffersMode:Z

    .line 165
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    .line 166
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setDataProvider(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V

    .line 167
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setListener(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V

    .line 168
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setSection(Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 169
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "StoreLocatorMapFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "StoreLocatorMapFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onCreateView"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const v0, 0x7f040120

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 176
    .local v7, "mRootViewGroup":Landroid/view/ViewGroup;
    const v0, 0x7f110402

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerClickCatcher:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerClickCatcher:Landroid/view/View;

    new-instance v1, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v0, 0x7f110401

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    .line 200
    const v0, 0x7f110400

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainerNonFavorite:Landroid/view/ViewGroup;

    .line 203
    const v0, 0x7f110357

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 204
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 205
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setClipToPadding(Z)V

    .line 208
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    .line 209
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;Lcom/mcdonalds/app/storelocator/PagerItemListener;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    .line 216
    new-instance v6, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$1;)V

    .line 218
    .local v6, "mOnPageChangeListener":Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 219
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 221
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$2;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 234
    const v0, 0x7f110403

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mLocationButton:Landroid/widget/Button;

    .line 235
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mLocationButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mLocationButton:Landroid/widget/Button;

    const-string v1, "LocationButtonPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 240
    const v0, 0x7f110404

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    .line 241
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mSearchHereButton:Landroid/widget/Button;

    const-string v1, "FetchStoresInMapPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mIsOffersMode:Z

    if-eqz v0, :cond_0

    .line 248
    const v0, 0x7f110405

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mContractSymbol:Landroid/widget/ImageButton;

    .line 249
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mContractSymbol:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mContractSymbol:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mLocationButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 253
    .local v9, "params":Landroid/widget/FrameLayout$LayoutParams;
    const v0, 0x800003

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 254
    const/16 v0, 0xa

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 255
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mLocationButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 261
    .end local v9    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isCurrentStoreSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "PAGER_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainerNonFavorite:Landroid/view/ViewGroup;

    .line 270
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    const-string v3, "PAGER_FRAGMENT"

    .line 269
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerContainerNonFavorite:Landroid/view/ViewGroup;

    new-instance v1, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$3;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$3;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 291
    const v0, 0x7f1103ff

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 292
    .local v8, "mapOverlay":Landroid/view/View;
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 294
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v7

    .line 4294967295
    .end local v6    # "mOnPageChangeListener":Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$PageChangeListener;
    .end local v7    # "mRootViewGroup":Landroid/view/ViewGroup;
    .end local v8    # "mapOverlay":Landroid/view/View;
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "StoreLocatorMapFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onCurrentStoreChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
    .param p2, "previousCurrentStoreId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onCurrentStoreChange"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 647
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 648
    iput-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mIgnoreViewPagerChange:Z

    .line 649
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 348
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const-string v0, "onDestroyView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 340
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapRootViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 343
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    const-string v0, "onDetach"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    .prologue
    const-string v0, "onHiddenChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 139
    return-void
.end method

.method public onLocationUpdated(Landroid/location/Location;I)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "tag"    # I

    .prologue
    const/4 v4, 0x1

    const-string v1, "onLocationUpdated"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    if-ne p2, v4, :cond_0

    if-nez p1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 848
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v0, :cond_0

    .line 852
    const-string v1, "No Current Location defined!"

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/log/MCDLog;->fatal(Ljava/lang/String;)V

    .line 855
    .end local v0    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    return-void
.end method

.method public onMapAvailable()V
    .locals 2

    .prologue
    const-string v0, "onMapAvailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/MapManager;->getMap()Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .line 361
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->configMap()V

    .line 366
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->refresh()V

    goto :goto_0
.end method

.method public onMapError(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const-string v0, "onMapError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 355
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 319
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v0}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->onPause()V

    .line 322
    :cond_0
    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectedStoreChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Ljava/lang/String;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Z)V
    .locals 10
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
    .param p2, "previousSelectionId"    # Ljava/lang/String;
    .param p3, "previousSection"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .param p4, "shouldExpand"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const-string v5, "onSelectedStoreChange"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p2, v7, v2

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v9, v7, v8

    invoke-static {p0, v5, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    if-nez p2, :cond_1

    const/4 v5, 0x0

    :goto_0
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 510
    invoke-interface {v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v7

    .line 509
    invoke-direct {p0, v5, v7}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->updateMapSelection(Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 512
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    .line 513
    .local v4, "selected":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v4, :cond_7

    .line 515
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isMapOnly()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    invoke-virtual {v5, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 518
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    invoke-virtual {v5, p4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setExpanded(Z)V

    .line 520
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->showNonFavorite()V

    .line 576
    :cond_0
    :goto_1
    return-void

    .line 509
    .end local v4    # "selected":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 525
    .restart local v4    # "selected":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 526
    .local v0, "current":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_4

    iget-boolean v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mIsOffersMode:Z

    if-nez v5, :cond_4

    .line 528
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v7

    if-ne v5, v7, :cond_3

    .line 529
    .local v2, "isCurrent":Z
    :goto_2
    if-eqz v2, :cond_4

    .line 531
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 532
    invoke-direct {p0, p4}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->showPager(Z)V

    .line 534
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getItem(I)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    move-result-object v1

    .line 535
    .local v1, "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v1, p4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setExpanded(Z)V

    goto :goto_1

    .end local v1    # "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    .end local v2    # "isCurrent":Z
    :cond_3
    move v2, v6

    .line 528
    goto :goto_2

    .line 543
    :cond_4
    invoke-direct {p0, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->isFavorite(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mIsOffersMode:Z

    if-nez v5, :cond_6

    .line 545
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getPosition(Ljava/lang/Integer;)I

    move-result v3

    .line 546
    .local v3, "position":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 548
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 550
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v5, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getItem(I)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    move-result-object v1

    .line 551
    .restart local v1    # "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    if-eqz v1, :cond_5

    .line 552
    invoke-virtual {v1, p4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setExpanded(Z)V

    .line 556
    .end local v1    # "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    :cond_5
    invoke-direct {p0, p4}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->showPager(Z)V

    goto :goto_1

    .line 560
    .end local v3    # "position":I
    :cond_6
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    invoke-virtual {v5, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 561
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->hidePager()V

    .line 562
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->showNonFavorite()V

    goto :goto_1

    .line 566
    .end local v0    # "current":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_7
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    if-eqz v5, :cond_8

    .line 567
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getItem(I)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    move-result-object v1

    .line 568
    .restart local v1    # "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    if-eqz v1, :cond_8

    .line 569
    invoke-virtual {v1, p4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setExpanded(Z)V

    .line 573
    .end local v1    # "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    :cond_8
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->hideNonFavoritePager()V

    .line 574
    invoke-direct {p0, p4}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->showPager(Z)V

    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 333
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/MapManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapRootViewGroup:Landroid/view/ViewGroup;

    .line 334
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onTouch"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 797
    iput-boolean v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mMapPanBegan:Z

    .line 800
    :cond_0
    return v2
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onViewStateRestored"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const-string v0, "onViewStateRestored"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public refreshSelectedStore()V
    .locals 4

    .prologue
    const-string v2, "refreshSelectedStore"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, "visibleFragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isMapOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 656
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mPagerFragmentNonFavorite:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    .line 664
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->reset()V

    .line 667
    :cond_1
    return-void

    .line 658
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getPosition(Ljava/lang/Integer;)I

    move-result v0

    .line 659
    .local v0, "position":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 660
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mViewPagerAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getItem(I)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    move-result-object v1

    goto :goto_0
.end method

.method public setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V
    .locals 3
    .param p1, "controller"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const-string v0, "setController"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    if-eqz p1, :cond_0

    .line 145
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 146
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    .line 148
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 149
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->addListener(Lcom/mcdonalds/app/storelocator/StoreLocationListener;)V

    .line 151
    :cond_0
    return-void
.end method

.method public setInitialCameraPosition(Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)V
    .locals 3
    .param p1, "initialCameraPosition"    # Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    .prologue
    const-string v0, "setInitialCameraPosition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mInitialCameraPosition:Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    .line 371
    return-void
.end method

.method public setIsFirstLoad(Z)V
    .locals 4
    .param p1, "isFirstLoad"    # Z

    .prologue
    const-string v0, "setIsFirstLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->mIsFirstLoad:Z

    .line 1082
    return-void
.end method
