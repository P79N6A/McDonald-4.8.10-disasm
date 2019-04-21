.class public Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;
.super Ljava/lang/Object;
.source "MarkerOptions.java"


# instance fields
.field private mAlpha:F

.field private mIcon:I

.field private mPosition:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

.field private mSnippet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alpha(F)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;
    .locals 4
    .param p1, "value"    # F

    .prologue
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput p1, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mAlpha:F

    .line 28
    return-object p0
.end method

.method public icon(I)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    const-string v0, "icon"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iput p1, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mIcon:I

    .line 23
    return-object p0
.end method

.method public position(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;
    .locals 3
    .param p1, "latLng"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .prologue
    const-string v0, "position"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mPosition:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 18
    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-string v0, "snippet"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mSnippet:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public toAMap()Lcom/amap/api/maps/model/MarkerOptions;
    .locals 4

    .prologue
    const-string v2, "toAMap"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mIcon:I

    .line 69
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 71
    .local v0, "descriptor":Lcom/amap/api/maps/model/BitmapDescriptor;
    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    .line 74
    .local v1, "options":Lcom/amap/api/maps/model/MarkerOptions;
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 75
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mPosition:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toAMap()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 76
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mSnippet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 77
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;

    .line 79
    return-object v1
.end method

.method public toAMap2D()Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 4

    .prologue
    const-string v2, "toAMap2D"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mIcon:I

    .line 85
    invoke-static {v2}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    .line 87
    .local v0, "descriptor":Lcom/amap/api/maps2d/model/BitmapDescriptor;
    new-instance v1, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 90
    .local v1, "options":Lcom/amap/api/maps2d/model/MarkerOptions;
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 91
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mPosition:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toAMap2D()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 92
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mSnippet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 93
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 95
    return-object v1
.end method

.method public toGMap()Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 4

    .prologue
    const-string v2, "toGMap"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mIcon:I

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 56
    .local v0, "descriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 59
    .local v1, "options":Lcom/google/android/gms/maps/model/MarkerOptions;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mPosition:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->toGmaps()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 60
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 61
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->mSnippet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 63
    return-object v1
.end method
