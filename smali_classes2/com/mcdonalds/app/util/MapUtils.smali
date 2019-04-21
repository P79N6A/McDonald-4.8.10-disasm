.class public Lcom/mcdonalds/app/util/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateMap(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/maps/McdMap;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "map"    # Lcom/mcdonalds/app/storelocator/maps/McdMap;
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.MapUtils"

    const-string v3, "updateMap"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "userLocation":Landroid/location/Location;
    :try_start_0
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getUserLocation()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/mcdonalds/app/util/MapUtils;->updateMap(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/maps/McdMap;Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/location/Location;)V

    .line 33
    return-void

    .line 29
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static updateMap(Landroid/content/Context;Lcom/mcdonalds/app/storelocator/maps/McdMap;Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/location/Location;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "map"    # Lcom/mcdonalds/app/storelocator/maps/McdMap;
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.MapUtils"

    const-string v3, "updateMap"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    .line 47
    .local v0, "storeLocation":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    new-instance v1, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;-><init>()V

    .line 48
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->position(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    move-result-object v1

    const v2, 0x7f0201ce

    .line 49
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;->icon(I)Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;

    move-result-object v1

    .line 47
    invoke-interface {p1, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->addMarker(Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    .line 51
    invoke-static {p0}, Lcom/mcdonalds/app/util/MapUtils;->with(Landroid/content/Context;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->map(Lcom/mcdonalds/app/storelocator/maps/McdMap;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p2}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->store(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {v1, p3}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->userLocation(Landroid/location/Location;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->move()V

    .line 57
    .end local v0    # "storeLocation":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    :cond_0
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.MapUtils"

    const-string v2, "with"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
