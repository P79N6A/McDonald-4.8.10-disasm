.class public Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
.super Lcom/mcdonalds/sdk/modules/BaseModule;
.source "StoreLocatorModule.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;
    }
.end annotation


# static fields
.field private static final AUTONAVI_CONNECTOR_VALUE:Ljava/lang/String; = "AutoNavi"

.field private static final DEFAULT_LOCATION_SEARCH_TIMEOUT:J = 0x3a98L

.field public static final DEFAULT_MAX_RESULTS:I = 0x4b

.field public static final NAME:Ljava/lang/String; = "storeLocator"

.field private static final STORE_LOCATOR_CONNECTOR:Ljava/lang/String; = "modules.storeLocator.connector"

.field private static final TAG:Ljava/lang/String; = "modules.StoreLocator"


# instance fields
.field private final mActiveTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectorImpl:Ljava/lang/String;

.field private final mConnectorTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastFiltersQueried:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastKnownLocation:Landroid/location/Location;

.field private mLastLatLngQueried:Lcom/google/android/gms/maps/model/LatLng;

.field private mLastRetrievedStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationTimer:Ljava/util/Timer;

.field private final mObjectCache:Ljava/util/Map;
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

.field private final mTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/BaseModule;-><init>()V

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    .line 67
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mTokenMap:Ljava/util/Map;

    .line 68
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorTokenMap:Ljava/util/Map;

    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mObjectCache:Ljava/util/Map;

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastRetrievedStores:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mContext:Landroid/content/Context;

    .line 87
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 89
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "language":Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 91
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mContext:Landroid/content/Context;

    .line 94
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v2    # "language":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "modules.storeLocator.connector"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "connector":Ljava/lang/String;
    const-string v3, "MWStoreLocator"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const-string v1, "MiddlewareStoreLocator"

    .line 99
    :cond_1
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorImpl:Ljava/lang/String;

    .line 101
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLocationTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLocationTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastKnownLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .param p1, "x1"    # Ljava/lang/Double;
    .param p2, "x2"    # Ljava/lang/Double;
    .param p3, "x3"    # Ljava/lang/Double;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p6, "x6"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->commonStoresWithLocation(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastRetrievedStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastRetrievedStores:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastLatLngQueried:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$702(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastFiltersQueried:Ljava/util/List;

    return-object p1
.end method

.method private commonStoresWithLocation(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 12
    .param p1, "latitude"    # Ljava/lang/Double;
    .param p2, "longitude"    # Ljava/lang/Double;
    .param p3, "radius"    # Ljava/lang/Double;
    .param p5, "requestToken"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p6    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v10, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-direct {v10}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;-><init>()V

    .line 437
    .local v10, "parameters":Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    const/16 v3, 0x4b

    invoke-virtual {v10, v3}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setMaxResults(I)V

    .line 441
    invoke-virtual {v10, p3}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setDistance(Ljava/lang/Double;)V

    .line 443
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getMockLocation()Landroid/location/Location;

    move-result-object v9

    .line 444
    .local v9, "mockLocation":Landroid/location/Location;
    if-nez v9, :cond_0

    .line 445
    invoke-virtual {v10, p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLatitude(Ljava/lang/Double;)V

    .line 446
    invoke-virtual {v10, p2}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLongitude(Ljava/lang/Double;)V

    .line 452
    :goto_0
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setFilters(Ljava/util/List;)V

    .line 454
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLatitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getLongitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object v3, p0

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->hasStoresRetrieved(DDLjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$5;

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-direct {v4, p0, v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$5;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    :goto_1
    return-void

    .line 448
    :cond_0
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLatitude(Ljava/lang/Double;)V

    .line 449
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLongitude(Ljava/lang/Double;)V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    .line 465
    .local v11, "storeLocatorConnector":Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;

    new-instance v4, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$6;

    move-object/from16 v0, p6

    invoke-direct {v4, p0, v10, v0}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$6;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {v3, p0, v4}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 466
    invoke-interface {v11, v10, v3}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v2

    .line 480
    .local v2, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mTokenMap:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorTokenMap:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private hasStoresRetrieved(DDLjava/util/List;)Z
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 498
    .local p5, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastRetrievedStores:Ljava/util/List;

    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastLatLngQueried:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastLatLngQueried:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v0, v0, p3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastFiltersQueried:Ljava/util/List;

    if-eq v0, p5, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastFiltersQueried:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastFiltersQueried:Ljava/util/List;

    .line 502
    invoke-interface {v0, p5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 498
    :goto_0
    return v0

    .line 502
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method cacheStores(Ljava/util/List;)V
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
    .line 411
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 414
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mObjectCache:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 417
    .end local v0    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    return-void
.end method

.method public getAllFacilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/repository/FacilityRepository;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableStoreFeatures(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 4
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "storeFeatures"

    invoke-direct {v1, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 346
    .local v1, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    .line 349
    .local v2, "storeLocatorConnector":Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;

    invoke-direct {v3, p0, p1, v1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v2, v3}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->requestStoreFilters(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 365
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mTokenMap:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorTokenMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    return-object v1
.end method

.method public getFacilityMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/repository/FacilityRepository;->getFacilityMap(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastKnownLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPreferredMapsSDK()Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;
    .locals 3

    .prologue
    .line 381
    sget-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->Google:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    .line 383
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorImpl:Ljava/lang/String;

    const-string v2, "AutoNavi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->AutoNavi:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 387
    :cond_1
    sget-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->AutoNavi2D:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    goto :goto_0
.end method

.method public getStoreForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v1, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v3, "getStoreForId"

    invoke-direct {v1, v3}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    .line 119
    .local v2, "storeLocatorConnector":Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;
    new-instance v3, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 120
    invoke-interface {v2, p1, v3}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->requestStoreWithId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 124
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mTokenMap:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorTokenMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object v1
.end method

.method public getStoresForIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 8
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v4, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v6, "getStoresForId"

    invoke-direct {v4, v6}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "cacheHits":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    .local v3, "remainingKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mObjectCache:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mObjectCache:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 153
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorImpl:Ljava/lang/String;

    .line 156
    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    .line 157
    .local v5, "storeLocatorConnector":Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;
    new-instance v6, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;

    invoke-direct {v6, p0, v0, p2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v5, v3, v6}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->requestStoresWithIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v1

    .line 161
    .local v1, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mTokenMap:Ljava/util/Map;

    invoke-interface {v6, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorTokenMap:Ljava/util/Map;

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v1    # "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    .end local v5    # "storeLocatorConnector":Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;
    :goto_1
    return-object v4

    .line 165
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$1;

    invoke-direct {v7, p0, p2, v0, v4}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$1;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/AsyncListener;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public getStoresNearAddressWithinRadius(Landroid/location/Address;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "address"    # Landroid/location/Address;
    .param p2, "radius"    # Ljava/lang/Double;
    .param p4    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Address;",
            "Ljava/lang/Double;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 332
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoresNearAddressWithinRadius(Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "radius"    # Ljava/lang/Double;
    .param p4    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 288
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v2, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v4, "getStoresNearAddressWithinRadius"

    invoke-direct {v2, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v1, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;-><init>()V

    .line 295
    .local v1, "parameters":Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    const/16 v4, 0x4b

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setMaxResults(I)V

    .line 299
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setSearchString(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1, p2}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setDistance(Ljava/lang/Double;)V

    .line 301
    invoke-virtual {v1, p3}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setFilters(Ljava/util/List;)V

    .line 304
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorImpl:Ljava/lang/String;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    .line 305
    .local v3, "storeLocatorConnector":Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;
    new-instance v4, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;

    invoke-direct {v4, p0, p4}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 306
    invoke-interface {v3, v1, v4}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 312
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mTokenMap:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorTokenMap:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-object v2
.end method

.method public getStoresNearCurrentLocationWithinRadius(Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 15
    .param p1, "radius"    # Ljava/lang/Double;
    .param p3    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v7, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v2, "getStoresNearCurrentLocationWithinRadius"

    invoke-direct {v7, v2}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 188
    .local v7, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getCurrentUserLocation()Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastKnownLocation:Landroid/location/Location;

    .line 191
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 192
    .local v12, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v11

    .line 194
    .local v11, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v11, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Landroid/location/Location;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastKnownLocation:Landroid/location/Location;

    .line 196
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastKnownLocation:Landroid/location/Location;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 197
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastKnownLocation:Landroid/location/Location;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastKnownLocation:Landroid/location/Location;

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastKnownLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLastKnownLocation:Landroid/location/Location;

    .line 202
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    .line 201
    invoke-direct/range {v2 .. v8}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->commonStoresWithLocation(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 246
    :goto_0
    return-object v7

    .line 207
    :cond_1
    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 209
    .local v13, "handler":Landroid/os/Handler;
    new-instance v14, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;

    move-object/from16 v0, p3

    invoke-direct {v14, p0, v13, v0, v7}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$2;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Landroid/os/Handler;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 223
    .local v14, "task":Ljava/util/TimerTask;
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLocationTimer:Ljava/util/Timer;

    .line 224
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mLocationTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v14, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 226
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v2

    new-instance v5, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;

    move-object v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$3;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/AsyncToken;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->requestSingleUpdate(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V

    goto :goto_0
.end method

.method public getStoresNearLatLongWithinRadius(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 7
    .param p1, "latitude"    # Ljava/lang/Double;
    .param p2, "longitude"    # Ljava/lang/Double;
    .param p3, "radius"    # Ljava/lang/Double;
    .param p5    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 264
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v5, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v0, "getStoresNearCurrentLocationWithinRadius"

    invoke-direct {v5, v0}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 265
    .local v5, "requestToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 267
    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->commonStoresWithLocation(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 269
    return-object v5
.end method

.method isCancelled(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moduleToken(Ljava/lang/Object;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 1
    .param p1, "connectorToken"    # Ljava/lang/Object;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorTokenMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/AsyncToken;

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "dataBundle"    # Landroid/os/Bundle;

    .prologue
    .line 532
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 547
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 537
    return-void
.end method

.method removeToken(Ljava/lang/Object;)V
    .locals 2
    .param p1, "requestToken"    # Ljava/lang/Object;

    .prologue
    .line 506
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mActiveTokens:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/AsyncToken;

    .line 514
    .local v0, "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorTokenMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mConnectorTokenMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .end local v0    # "connectorToken":Lcom/mcdonalds/sdk/AsyncToken;
    :cond_2
    return-void
.end method
