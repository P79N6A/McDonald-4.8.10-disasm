.class public Lcom/mcdonalds/app/storelocator/MapManager;
.super Ljava/lang/Object;
.source "MapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/storelocator/MapManager$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mcdonalds/app/storelocator/MapManager$Callback;

.field private mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

.field private mMapFragment:Landroid/support/v4/app/Fragment;

.field private final mMapReadyCallback:Lcom/google/android/gms/maps/OnMapReadyCallback;

.field private final mOnMapLoadedListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/storelocator/MapManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lcom/mcdonalds/app/storelocator/MapManager$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/MapManager$1;-><init>(Lcom/mcdonalds/app/storelocator/MapManager;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMapReadyCallback:Lcom/google/android/gms/maps/OnMapReadyCallback;

    .line 191
    new-instance v0, Lcom/mcdonalds/app/storelocator/MapManager$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/MapManager$2;-><init>(Lcom/mcdonalds/app/storelocator/MapManager;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mOnMapLoadedListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;

    .line 60
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mListener:Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    .line 63
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/MapManager;->init()V

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/storelocator/MapManager;Lcom/mcdonalds/app/storelocator/maps/McdMap;)Lcom/mcdonalds/app/storelocator/maps/McdMap;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/MapManager;
    .param p1, "x1"    # Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.MapManager"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/storelocator/MapManager;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/MapManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.MapManager"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/MapManager;->setDefaults()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/MapManager;)Lcom/mcdonalds/app/storelocator/MapManager$Callback;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/MapManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.MapManager"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mListener:Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/storelocator/MapManager;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/MapManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.MapManager"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/MapManager;->notifyMapAvailable()V

    return-void
.end method

.method private checkForPlayServices()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "checkForPlayServices"

    invoke-static {p0, v3, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 81
    .local v2, "resultCode":I
    if-nez v2, :cond_1

    .line 83
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMapFragment:Landroid/support/v4/app/Fragment;

    check-cast v1, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 84
    .local v1, "gMapFragment":Lcom/google/android/gms/maps/SupportMapFragment;
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMapReadyCallback:Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 107
    .end local v1    # "gMapFragment":Lcom/google/android/gms/maps/SupportMapFragment;
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    if-eq v2, v4, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 99
    .local v0, "dialog":Landroid/app/Dialog;
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mListener:Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mListener:Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    invoke-interface {v3, v0}, Lcom/mcdonalds/app/storelocator/MapManager$Callback;->onMapError(Landroid/app/Dialog;)V

    goto :goto_0

    .line 103
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mListener:Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mListener:Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    invoke-interface {v3, v5}, Lcom/mcdonalds/app/storelocator/MapManager$Callback;->onMapError(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method private createMapFragment()V
    .locals 8

    .prologue
    const v7, 0x7f090a06

    const/4 v6, 0x0

    const-string v4, "createMapFragment"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const-string v4, "storeLocator"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 116
    .local v3, "module":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getPreferredMapsSDK()Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    move-result-object v2

    .line 117
    .local v2, "mapsSDK":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;
    sget-object v4, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->Google:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    if-ne v2, v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 120
    new-instance v4, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-direct {v4}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMapFragment:Landroid/support/v4/app/Fragment;

    .line 122
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/MapManager;->checkForPlayServices()V

    .line 159
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v4, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->AutoNavi:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    if-ne v2, v4, :cond_2

    .line 126
    :try_start_0
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/api/maps/MapsInitializer;->initialize(Landroid/content/Context;)V

    .line 127
    new-instance v1, Lcom/amap/api/maps/SupportMapFragment;

    invoke-direct {v1}, Lcom/amap/api/maps/SupportMapFragment;-><init>()V

    .line 128
    .local v1, "fragment":Lcom/amap/api/maps/SupportMapFragment;
    new-instance v4, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-virtual {v1}, Lcom/amap/api/maps/SupportMapFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;-><init>(Lcom/amap/api/maps/AMap;)V

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .line 129
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMapFragment:Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1    # "fragment":Lcom/amap/api/maps/SupportMapFragment;
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mOnMapLoadedListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;

    invoke-interface {v4, v5}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setOnMapLoadedListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;)V

    .line 157
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/MapManager;->setDefaults()V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 134
    :cond_1
    sget-object v4, Lcom/mcdonalds/app/storelocator/MapManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "error initializing map"

    invoke-static {v4, v5}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/api/maps2d/MapsInitializer;->initialize(Landroid/content/Context;)V

    .line 142
    new-instance v1, Lcom/amap/api/maps2d/SupportMapFragment;

    invoke-direct {v1}, Lcom/amap/api/maps2d/SupportMapFragment;-><init>()V

    .line 143
    .local v1, "fragment":Lcom/amap/api/maps2d/SupportMapFragment;
    new-instance v4, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/SupportMapFragment;->getMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;-><init>(Lcom/amap/api/maps2d/AMap;)V

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .line 144
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMapFragment:Landroid/support/v4/app/Fragment;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 146
    .end local v1    # "fragment":Lcom/amap/api/maps2d/SupportMapFragment;
    :catch_1
    move-exception v0

    .line 147
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 148
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_3
    sget-object v4, Lcom/mcdonalds/app/storelocator/MapManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "error initializing map"

    invoke-static {v4, v5}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyMapAvailable()V
    .locals 2

    .prologue
    const-string v0, "notifyMapAvailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mListener:Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mListener:Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    invoke-interface {v0}, Lcom/mcdonalds/app/storelocator/MapManager$Callback;->onMapAvailable()V

    .line 203
    :cond_0
    return-void
.end method

.method private setDefaults()V
    .locals 7

    .prologue
    const-string v5, "setDefaults"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "mapDefaults.location"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 168
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "mapDefaults.location"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, "defaultLocationString":Ljava/lang/String;
    invoke-static {v3}, Lcom/mcdonalds/app/util/AppUtils;->getLocationFromString(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v0

    .line 176
    .end local v3    # "defaultLocationString":Ljava/lang/String;
    .local v0, "defaultLocation":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    :goto_0
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "mapDefaults.zoom"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v5

    int-to-float v4, v5

    .line 178
    .local v4, "defaultZoom":F
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    invoke-interface {v5, v0, v4}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->moveCamera(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;F)V

    .line 180
    .end local v4    # "defaultZoom":F
    :cond_0
    return-void

    .line 171
    .end local v0    # "defaultLocation":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "mapDefaults.latitude"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, "defaultLocationLatitudeString":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "mapDefaults.longitude"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    .local v2, "defaultLocationLongitudeString":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AppUtils;->getLocationFromString(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v0

    .restart local v0    # "defaultLocation":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    goto :goto_0
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    const-string v0, "getFragment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMapFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getMap()Lcom/mcdonalds/app/storelocator/maps/McdMap;
    .locals 2

    .prologue
    const-string v0, "getMap"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mMap:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    return-object v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const-string v0, "init"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/MapManager;->createMapFragment()V

    .line 71
    return-void
.end method

.method public setCallback(Lcom/mcdonalds/app/storelocator/MapManager$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    .prologue
    const-string v0, "setCallback"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/MapManager;->mListener:Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    .line 235
    return-void
.end method
