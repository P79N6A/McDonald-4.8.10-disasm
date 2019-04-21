.class public Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
.super Ljava/lang/Object;
.source "CameraPosition.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public target:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

.field public zoom:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAmap(Lcom/amap/api/maps/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    .locals 5
    .param p0, "cameraPosition"    # Lcom/amap/api/maps/model/CameraPosition;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.maps.model.CameraPosition"

    const-string v2, "fromAmap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    if-nez p0, :cond_0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;-><init>()V

    .line 28
    .local v0, "position":Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->fromAMaps(Lcom/amap/api/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->target:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 29
    iget v1, p0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iput v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->zoom:F

    goto :goto_0
.end method

.method public static fromAmap2D(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    .locals 6
    .param p0, "cameraPosition"    # Lcom/amap/api/maps2d/model/CameraPosition;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.storelocator.maps.model.CameraPosition"

    const-string v3, "fromAmap2D"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;-><init>()V

    .line 37
    .local v0, "position":Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->fromAMaps2D(Lcom/amap/api/maps2d/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->target:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 38
    iget v1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    iput v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->zoom:F

    .line 40
    return-object v0
.end method

.method public static fromGMap(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    .locals 6
    .param p0, "cameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.storelocator.maps.model.CameraPosition"

    const-string v3, "fromGMap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;-><init>()V

    .line 16
    .local v0, "position":Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->fromGMap(Lcom/google/android/gms/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->target:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 17
    iget v1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iput v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->zoom:F

    .line 19
    return-object v0
.end method
