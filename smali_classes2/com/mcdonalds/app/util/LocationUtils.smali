.class public Lcom/mcdonalds/app/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distanceBetween(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)D
    .locals 24
    .param p0, "start"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .param p1, "end"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .prologue
    const/16 v18, 0x0

    const-string v19, "com.mcdonalds.app.util.LocationUtils"

    const-string v20, "distanceBetween"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p0, v21, v22

    const/16 v22, 0x1

    aput-object p1, v21, v22

    invoke-static/range {v18 .. v21}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->latitude:D

    .line 25
    .local v10, "lat1":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->latitude:D

    .line 27
    .local v12, "lat2":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->longitude:D

    .line 28
    .local v14, "lon1":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    .line 30
    .local v16, "lon2":D
    sub-double v18, v12, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 31
    .local v6, "dLat":D
    sub-double v18, v16, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 33
    .local v8, "dLon":D
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v18, v6, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v20, v6, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 34
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v22, v8, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v22, v8, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v2, v18, v20

    .line 36
    .local v2, "a":D
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v20

    mul-double v4, v18, v20

    .line 38
    .local v4, "c":D
    const-wide v18, 0x415848cc00000000L    # 6366000.0

    mul-double v18, v18, v4

    return-wide v18
.end method

.method public static getZoomLevelForRadius(DDD)D
    .locals 10
    .param p0, "radius"    # D
    .param p2, "width"    # D
    .param p4, "latitude"    # D

    .prologue
    const/4 v4, 0x0

    const-string v5, "com.mcdonalds.app.util.LocationUtils"

    const-string v6, "getZoomLevelForRadius"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, p0, p1}, Ljava/lang/Double;-><init>(D)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, p2, p3}, Ljava/lang/Double;-><init>(D)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, p4, p5}, Ljava/lang/Double;-><init>(D)V

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, p4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 52
    .local v0, "adjust":D
    const-wide v4, 0x415854a700000000L    # 6378140.0

    mul-double/2addr v4, p2

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, p0

    div-double v2, v4, v6

    .line 54
    .local v2, "arg":D
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static toLatLng(Landroid/location/Location;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 6
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LocationUtils"

    const-string v2, "toLatLng"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method
