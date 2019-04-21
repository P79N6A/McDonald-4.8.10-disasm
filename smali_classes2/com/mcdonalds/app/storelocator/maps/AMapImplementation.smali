.class public Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;
.super Ljava/lang/Object;
.source "AMapImplementation.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;
.implements Lcom/amap/api/maps/LocationSource;
.implements Lcom/mcdonalds/app/storelocator/maps/McdMap;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAMapCameraChangeListener:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

.field private mAMapMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private final mAMapOnMapClickListener:Lcom/amap/api/maps/AMap$OnMapClickListener;

.field private final mAMapOnMarkerClickListener:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

.field private final mCancelableCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

.field private mCurrentZoom:F

.field private mListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

.field private mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

.field private mMap:Lcom/amap/api/maps/AMap;

.field private mMarkers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/app/storelocator/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

.field private mOnMapClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

.field private mOnMarkerClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

.field private mUserLocation:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/AMap;)V
    .locals 1
    .param p1, "map"    # Lcom/amap/api/maps/AMap;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$2;-><init>(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mCancelableCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 209
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$3;-><init>(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mAMapCameraChangeListener:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    .line 221
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$4;-><init>(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mAMapOnMapClickListener:Lcom/amap/api/maps/AMap$OnMapClickListener;

    .line 228
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$5;-><init>(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mAMapOnMarkerClickListener:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    .line 45
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMarkers:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mAMapMarkers:Ljava/util/List;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;F)F
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;
    .param p1, "x1"    # F

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMapImplementation"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iput p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mCurrentZoom:F

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)Lcom/amap/api/maps/AMap;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMapImplementation"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMapImplementation"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMapImplementation"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mOnMapClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMapImplementation"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->findMarkerById(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMapImplementation"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mOnMarkerClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    return-object v0
.end method

.method private animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 4
    .param p1, "cameraUpdate"    # Lcom/amap/api/maps/CameraUpdate;

    .prologue
    const-string v1, "animateCamera"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mCancelableCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-virtual {v1, p1, v2}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private findMarkerById(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const-string v0, "findMarkerById"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMarkers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    return-object v0
.end method


# virtual methods
.method public activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    .prologue
    const-string v0, "activate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    .line 246
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    .line 249
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    const-string v1, "lbs"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationData(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    .line 251
    :cond_0
    return-void
.end method

.method public addMarker(Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .locals 5
    .param p1, "options"    # Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    .prologue
    const-string v2, "addMarker"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->toAMap()Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    .line 125
    .local v0, "aMarker":Lcom/amap/api/maps/model/Marker;
    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->fromAMap(Lcom/amap/api/maps/model/Marker;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v1

    .line 127
    .local v1, "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMarkers:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mAMapMarkers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-object v1
.end method

.method public animateCamera(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;F)V
    .locals 5
    .param p1, "location"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .param p2, "zoom"    # F

    .prologue
    const-string v1, "animateCamera"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toAMap()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    .line 68
    .local v0, "update":Lcom/amap/api/maps/CameraUpdate;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 69
    return-void
.end method

.method public animateCamera(Ljava/util/List;I)V
    .locals 7
    .param p2, "margin"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/storelocator/maps/model/LatLng;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "bounds":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/storelocator/maps/model/LatLng;>;"
    const-string v3, "animateCamera"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    new-instance v0, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    .line 75
    .local v0, "builder":Lcom/amap/api/maps/model/LatLngBounds$Builder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 76
    .local v1, "latLng":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toAMap()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 79
    .end local v1    # "latLng":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v2

    .line 80
    .local v2, "update":Lcom/amap/api/maps/CameraUpdate;
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 81
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const-string v1, "clear"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mAMapMarkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    .line 93
    .local v0, "marker":Lcom/amap/api/maps/model/Marker;
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    .line 94
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->destroy()V

    goto :goto_0

    .line 97
    .end local v0    # "marker":Lcom/amap/api/maps/model/Marker;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mAMapMarkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 98
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMarkers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 99
    return-void
.end method

.method public configure()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "configure"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setCompassEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationRotateAngle(F)V

    .line 160
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setLocationSource(Lcom/amap/api/maps/LocationSource;)V

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/AMap;->setMyLocationType(I)V

    .line 163
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "deactivate"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    .line 258
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 261
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v0}, Lcom/amap/api/location/LocationManagerProxy;->destroy()V

    .line 263
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    .line 265
    :cond_0
    return-void
.end method

.method public getCameraPosition()Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    .locals 2

    .prologue
    const-string v0, "getCameraPosition"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->fromAmap(Lcom/amap/api/maps/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentZoom()F
    .locals 2

    .prologue
    const-string v0, "getCurrentZoom"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mCurrentZoom:F

    return v0
.end method

.method public getUserLocation()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 2

    .prologue
    const-string v0, "getUserLocation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mUserLocation:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    return-object v0
.end method

.method public moveCamera(Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)V
    .locals 4
    .param p1, "position"    # Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    .prologue
    const-string v1, "moveCamera"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v1, p1, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->target:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toAMap()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget v2, p1, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->zoom:F

    invoke-static {v1, v2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    .line 61
    .local v0, "update":Lcom/amap/api/maps/CameraUpdate;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 62
    return-void
.end method

.method public moveCamera(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;F)V
    .locals 5
    .param p1, "location"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .param p2, "zoom"    # F

    .prologue
    const-string v1, "moveCamera"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toAMap()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    .line 54
    .local v0, "update":Lcom/amap/api/maps/CameraUpdate;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 55
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-string v0, "onLocationChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mUserLocation:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 282
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 4
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    const-string v1, "onLocationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    invoke-interface {v1, p1}, Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 274
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v1

    iget v0, v1, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    .line 275
    .local v0, "bearing":F
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->setMyLocationRotateAngle(F)V

    .line 277
    .end local v0    # "bearing":F
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->deactivate()V

    .line 136
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-string v0, "onProviderDisabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-string v0, "onProviderEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "onStatusChanged"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public setCurrentZoom(F)V
    .locals 4
    .param p1, "zoom"    # F

    .prologue
    const-string v0, "setCurrentZoom"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iput p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mCurrentZoom:F

    .line 104
    return-void
.end method

.method public setInfoWindowAdapter(Lcom/mcdonalds/app/storelocator/maps/McdMap$InfoWindowAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/mcdonalds/app/storelocator/maps/McdMap$InfoWindowAdapter;

    .prologue
    const-string v0, "setInfoWindowAdapter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/maps/McdMap$InfoWindowAdapter;->toAMap()Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    .line 175
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const-string v0, "setMyLocationEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->isMyLocationEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    .line 170
    :cond_0
    return-void
.end method

.method public setOnCameraChangeListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    .prologue
    const-string v0, "setOnCameraChangeListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    .line 86
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mAMapCameraChangeListener:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V

    .line 87
    return-void
.end method

.method public setOnMapClickListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    .prologue
    const-string v0, "setOnMapClickListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mOnMapClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    .line 180
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mAMapOnMapClickListener:Lcom/amap/api/maps/AMap$OnMapClickListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V

    .line 181
    return-void
.end method

.method public setOnMapLoadedListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;)V
    .locals 3
    .param p1, "onMapLoadedListener"    # Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;

    .prologue
    const-string v0, "setOnMapLoadedListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$1;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$1;-><init>(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    .line 146
    return-void
.end method

.method public setOnMarkerClickListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    .prologue
    const-string v0, "setOnMarkerClickListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mOnMarkerClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    .line 186
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mMap:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->mAMapOnMarkerClickListener:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V

    .line 187
    return-void
.end method
