.class public Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;
.super Ljava/lang/Object;
.source "AMap2DImplementation.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;
.implements Lcom/amap/api/maps2d/LocationSource;
.implements Lcom/mcdonalds/app/storelocator/maps/McdMap;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAMapCameraChangeListener:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

.field private mAMapMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private final mAMapOnMapClickListener:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

.field private final mAMapOnMarkerClickListener:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

.field private final mCancelableCallback:Lcom/amap/api/maps2d/AMap$CancelableCallback;

.field private mCurrentZoom:F

.field private mListener:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

.field private mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

.field private mMap:Lcom/amap/api/maps2d/AMap;

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

    sput-object v0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/AMap;)V
    .locals 1
    .param p1, "map"    # Lcom/amap/api/maps2d/AMap;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$2;-><init>(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mCancelableCallback:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 206
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$3;-><init>(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mAMapCameraChangeListener:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    .line 218
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$4;-><init>(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mAMapOnMapClickListener:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    .line 225
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$5;-><init>(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mAMapOnMarkerClickListener:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    .line 45
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMarkers:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mAMapMarkers:Ljava/util/List;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;F)F
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;
    .param p1, "x1"    # F

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMap2DImplementation"

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
    iput p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mCurrentZoom:F

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)Lcom/amap/api/maps2d/AMap;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMap2DImplementation"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMap2DImplementation"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMap2DImplementation"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mOnMapClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMap2DImplementation"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->findMarkerById(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.AMap2DImplementation"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mOnMarkerClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    return-object v0
.end method

.method private animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    .locals 4
    .param p1, "cameraUpdate"    # Lcom/amap/api/maps2d/CameraUpdate;

    .prologue
    const-string v1, "animateCamera"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mCancelableCallback:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-virtual {v1, p1, v2}, Lcom/amap/api/maps2d/AMap;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->LOG_TAG:Ljava/lang/String;

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

    .line 235
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMarkers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    return-object v0
.end method


# virtual methods
.method public activate(Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    .prologue
    const-string v0, "activate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mListener:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    .line 243
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    .line 246
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    const-string v1, "lbs"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationData(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    .line 248
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
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->toAMap2D()Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v0

    .line 125
    .local v0, "aMarker":Lcom/amap/api/maps2d/model/Marker;
    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->fromAMap2D(Lcom/amap/api/maps2d/model/Marker;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v1

    .line 127
    .local v1, "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMarkers:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mAMapMarkers:Ljava/util/List;

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
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toAMap2D()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v0

    .line 68
    .local v0, "update":Lcom/amap/api/maps2d/CameraUpdate;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

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
    new-instance v0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;-><init>()V

    .line 75
    .local v0, "builder":Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
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
    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toAMap2D()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    goto :goto_0

    .line 79
    .end local v1    # "latLng":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v2

    .line 80
    .local v2, "update":Lcom/amap/api/maps2d/CameraUpdate;
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

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
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mAMapMarkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    .line 93
    .local v0, "marker":Lcom/amap/api/maps2d/model/Marker;
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    .line 94
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->destroy()V

    goto :goto_0

    .line 97
    .end local v0    # "marker":Lcom/amap/api/maps2d/model/Marker;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mAMapMarkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 98
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMarkers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 99
    return-void
.end method

.method public configure()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "configure"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/UiSettings;->setCompassEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setMyLocationRotateAngle(F)V

    .line 158
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/AMap;->setLocationSource(Lcom/amap/api/maps2d/LocationSource;)V

    .line 159
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setMyLocationEnabled(Z)V

    .line 160
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "deactivate"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mListener:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    .line 255
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 258
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v0}, Lcom/amap/api/location/LocationManagerProxy;->destroy()V

    .line 260
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    .line 262
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
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->fromAmap2D(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

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
    iget v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mCurrentZoom:F

    return v0
.end method

.method public getUserLocation()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 2

    .prologue
    const-string v0, "getUserLocation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mUserLocation:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

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

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toAMap2D()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iget v2, p1, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->zoom:F

    invoke-static {v1, v2}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v0

    .line 61
    .local v0, "update":Lcom/amap/api/maps2d/CameraUpdate;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

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
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toAMap2D()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v0

    .line 54
    .local v0, "update":Lcom/amap/api/maps2d/CameraUpdate;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

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

    .line 278
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mUserLocation:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 279
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

    .line 267
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mListener:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mListener:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    invoke-interface {v1, p1}, Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 271
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/AMap;->getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v1

    iget v0, v1, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    .line 272
    .local v0, "bearing":F
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->setMyLocationRotateAngle(F)V

    .line 274
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
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->deactivate()V

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

    .line 294
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

    .line 289
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

    .line 284
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
    iput p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mCurrentZoom:F

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

    .line 171
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/maps/McdMap$InfoWindowAdapter;->toAMap2D()Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setInfoWindowAdapter(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V

    .line 172
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

    .line 164
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->isMyLocationEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/AMap;->setMyLocationEnabled(Z)V

    .line 167
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
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    .line 86
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mAMapCameraChangeListener:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setOnCameraChangeListener(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V

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

    .line 176
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mOnMapClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    .line 177
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mAMapOnMapClickListener:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setOnMapClickListener(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V

    .line 178
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
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$1;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$1;-><init>(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V

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

    .line 182
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mOnMarkerClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    .line 183
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mMap:Lcom/amap/api/maps2d/AMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->mAMapOnMarkerClickListener:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setOnMarkerClickListener(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V

    .line 184
    return-void
.end method
