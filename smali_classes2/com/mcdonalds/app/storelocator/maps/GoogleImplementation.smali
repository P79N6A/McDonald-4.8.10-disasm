.class public Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;
.super Ljava/lang/Object;
.source "GoogleImplementation.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/maps/McdMap;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCancelableCallback:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

.field private mCurrentZoom:F

.field private mGoogleMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private final mGoogleOnCameraChangeListener:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

.field private final mGoogleOnMapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

.field private final mGoogleOnMarkerClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

.field private mListener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

.field private final mLocationSource:Lcom/google/android/gms/maps/LocationSource;

.field private final mLocationUpdateListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$2;-><init>(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mCancelableCallback:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    .line 200
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$3;-><init>(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mGoogleOnCameraChangeListener:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    .line 207
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$4;-><init>(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mGoogleOnMapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    .line 214
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$5;-><init>(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mGoogleOnMarkerClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    .line 223
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$6;-><init>(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mLocationUpdateListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .line 234
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$7;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$7;-><init>(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mLocationSource:Lcom/google/android/gms/maps/LocationSource;

    .line 41
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMarkers:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mGoogleMarkers:Ljava/util/List;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;
    .param p1, "x1"    # Lcom/google/android/gms/maps/CameraUpdate;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.GoogleImplementation"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;F)F
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;
    .param p1, "x1"    # F

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.GoogleImplementation"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mCurrentZoom:F

    return p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.GoogleImplementation"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.GoogleImplementation"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.GoogleImplementation"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mOnMapClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.GoogleImplementation"

    const-string v2, "access$500"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->findMarkerById(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.GoogleImplementation"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mOnMarkerClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.GoogleImplementation"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mListener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;)Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;
    .param p1, "x1"    # Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.GoogleImplementation"

    const-string v2, "access$702"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mListener:Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.GoogleImplementation"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mLocationUpdateListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    return-object v0
.end method

.method private animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 4
    .param p1, "cameraUpdate"    # Lcom/google/android/gms/maps/CameraUpdate;

    .prologue
    const-string v1, "animateCamera"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mCancelableCallback:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$1;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$1;-><init>(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;Lcom/google/android/gms/maps/CameraUpdate;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    .line 248
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMarkers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    return-object v0
.end method


# virtual methods
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

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->toGMap()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 120
    .local v0, "googleMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->fromGMap(Lcom/google/android/gms/maps/model/Marker;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v1

    .line 122
    .local v1, "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMarkers:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mGoogleMarkers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "googleMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v1    # "marker":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v2

    .line 128
    const/4 v1, 0x0

    goto :goto_0
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

    .line 63
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toGmaps()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 64
    .local v0, "update":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 65
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

    .line 70
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 71
    .local v0, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 72
    .local v1, "latLng":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toGmaps()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 75
    .end local v1    # "latLng":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 76
    .local v2, "update":Lcom/google/android/gms/maps/CameraUpdate;
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 77
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const-string v1, "clear"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mGoogleMarkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 89
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 92
    .end local v0    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMarkers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 93
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mGoogleMarkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 94
    return-void
.end method

.method public configure()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "configure"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 149
    return-void
.end method

.method public getCameraPosition()Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    .locals 2

    .prologue
    const-string v0, "getCameraPosition"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->fromGMap(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentZoom()F
    .locals 2

    .prologue
    const-string v0, "getCurrentZoom"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mCurrentZoom:F

    return v0
.end method

.method public getUserLocation()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getUserLocation"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    return-object v1
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

    .line 56
    iget-object v1, p1, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->target:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toGmaps()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget v2, p1, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->zoom:F

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 57
    .local v0, "update":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 58
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

    .line 49
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toGmaps()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 50
    .local v0, "update":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 51
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
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

    .line 98
    iput p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mCurrentZoom:F

    .line 99
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

    .line 160
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/maps/McdMap$InfoWindowAdapter;->toGMap()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 161
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "setMyLocationEnabled"

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 154
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mLocationSource:Lcom/google/android/gms/maps/LocationSource;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setLocationSource(Lcom/google/android/gms/maps/LocationSource;)V

    .line 156
    return-void

    :cond_0
    move v0, v1

    .line 154
    goto :goto_0
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

    .line 81
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mOnCameraChangeListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    .line 82
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mGoogleOnCameraChangeListener:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 83
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

    .line 165
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mOnMapClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    .line 166
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mGoogleOnMapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 167
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

    .line 139
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

    .line 171
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mOnMarkerClickListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    .line 172
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->mGoogleOnMarkerClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 173
    return-void
.end method
