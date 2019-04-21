.class public Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
.super Ljava/lang/Object;
.source "LatLng.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->latitude:D

    .line 15
    iput-wide p3, p0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->longitude:D

    .line 16
    return-void
.end method

.method public static fromAMaps(Lcom/amap/api/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 6
    .param p0, "original"    # Lcom/amap/api/maps/model/LatLng;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.model.LatLng"

    const-string v2, "fromAMaps"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static fromAMaps2D(Lcom/amap/api/maps2d/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 6
    .param p0, "original"    # Lcom/amap/api/maps2d/model/LatLng;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.model.LatLng"

    const-string v2, "fromAMaps2D"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static fromGMap(Lcom/google/android/gms/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 6
    .param p0, "original"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.model.LatLng"

    const-string v2, "fromGMap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public toAMap()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    .prologue
    const-string v0, "toAMap"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->latitude:D

    iget-wide v4, p0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public toAMap2D()Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    .prologue
    const-string v0, "toAMap2D"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->latitude:D

    iget-wide v4, p0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public toGmaps()Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    .prologue
    const-string v0, "toGmaps"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->latitude:D

    iget-wide v4, p0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method
