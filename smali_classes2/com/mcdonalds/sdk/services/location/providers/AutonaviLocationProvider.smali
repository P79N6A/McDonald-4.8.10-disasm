.class public Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;
.super Ljava/lang/Object;
.source "AutonaviLocationProvider.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;


# static fields
.field private static final REQUEST_MODE_ACCURACY_MIN_DISTANCE:J = 0xaL

.field private static final REQUEST_MODE_ACCURACY_MIN_TIME:J

.field private static final REQUEST_MODE_BATTERY_MIN_DISTANCE:J = 0x64L

.field private static final REQUEST_MODE_BATTERY_MIN_TIME:J


# instance fields
.field private mAmapLocationListener:Lcom/mcdonalds/sdk/services/location/listeners/SimpleAmapLocationListener;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Lcom/amap/api/location/LocationManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->REQUEST_MODE_BATTERY_MIN_TIME:J

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->REQUEST_MODE_ACCURACY_MIN_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider$1;-><init>(Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mAmapLocationListener:Lcom/mcdonalds/sdk/services/location/listeners/SimpleAmapLocationListener;

    .line 58
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->setLocation(Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    return-object v0
.end method

.method private setLocation(Lcom/amap/api/location/AMapLocation;)V
    .locals 4
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 48
    new-instance v0, Landroid/location/Location;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocation:Landroid/location/Location;

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocation:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;->onLocationChanged(Landroid/location/Location;)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public disableLocationUpdates()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mAmapLocationListener:Lcom/mcdonalds/sdk/services/location/listeners/SimpleAmapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 126
    return-void
.end method

.method public enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;I)V

    .line 100
    return-void
.end method

.method public enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;I)V
    .locals 8
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;
    .param p2, "requestMode"    # I

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .line 107
    if-nez p2, :cond_0

    .line 108
    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->REQUEST_MODE_BATTERY_MIN_TIME:J

    .line 109
    .local v2, "minTime":J
    const-wide/16 v6, 0x64

    .line 120
    .local v6, "minDistance":J
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    const-string v1, "lbs"

    long-to-float v4, v6

    iget-object v5, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mAmapLocationListener:Lcom/mcdonalds/sdk/services/location/listeners/SimpleAmapLocationListener;

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationData(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    .line 121
    return-void

    .line 111
    .end local v2    # "minTime":J
    .end local v6    # "minDistance":J
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 112
    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->REQUEST_MODE_ACCURACY_MIN_TIME:J

    .line 113
    .restart local v2    # "minTime":J
    const-wide/16 v6, 0xa

    .restart local v6    # "minDistance":J
    goto :goto_0

    .line 116
    .end local v2    # "minTime":J
    .end local v6    # "minDistance":J
    :cond_1
    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->REQUEST_MODE_BATTERY_MIN_TIME:J

    .line 117
    .restart local v2    # "minTime":J
    const-wide/16 v6, 0x64

    .restart local v6    # "minDistance":J
    goto :goto_0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 18

    .prologue
    .line 66
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/32 v16, 0x493e0

    sub-long v10, v14, v16

    .line 67
    .local v10, "minTime":J
    const-wide/16 v6, 0x0

    .line 68
    .local v6, "bestTime":J
    const v3, 0x44bb8000    # 1500.0f

    .line 70
    .local v3, "bestAccuracy":F
    const/4 v4, 0x0

    .line 71
    .local v4, "bestResult":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v14}, Lcom/amap/api/location/LocationManagerProxy;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 73
    .local v8, "matchingProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 74
    .local v9, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v15, v9}, Lcom/amap/api/location/LocationManagerProxy;->getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;

    move-result-object v5

    .line 75
    .local v5, "location":Landroid/location/Location;
    if-eqz v5, :cond_0

    .line 76
    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    .line 77
    .local v2, "accuracy":F
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    .line 79
    .local v12, "time":J
    cmp-long v15, v12, v10

    if-lez v15, :cond_1

    cmpg-float v15, v2, v3

    if-gez v15, :cond_1

    .line 80
    move-object v4, v5

    .line 81
    move v3, v2

    .line 82
    move-wide v6, v12

    goto :goto_0

    .line 83
    :cond_1
    cmp-long v15, v12, v10

    if-gez v15, :cond_0

    const v15, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v15, v3, v15

    if-nez v15, :cond_0

    cmp-long v15, v12, v6

    if-lez v15, :cond_0

    .line 84
    move-object v4, v5

    .line 85
    move-wide v6, v12

    goto :goto_0

    .line 90
    .end local v2    # "accuracy":F
    .end local v5    # "location":Landroid/location/Location;
    .end local v9    # "provider":Ljava/lang/String;
    .end local v12    # "time":J
    :cond_2
    if-eqz v4, :cond_3

    .line 91
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocation:Landroid/location/Location;

    .line 94
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocation:Landroid/location/Location;

    return-object v14
.end method

.method public requestSingleUpdate(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mLocationManager:Lcom/amap/api/location/LocationManagerProxy;

    const-string v1, "lbs"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider$2;

    invoke-direct {v5, p0}, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider$2;-><init>(Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;)V

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationData(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    .line 138
    return-void
.end method

.method public searchAddress(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v4, Lcom/amap/api/services/geocoder/GeocodeQuery;

    const-string v6, ""

    invoke-direct {v4, p1, v6}, Lcom/amap/api/services/geocoder/GeocodeQuery;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v4, "geoQuery":Lcom/amap/api/services/geocoder/GeocodeQuery;
    new-instance v5, Lcom/amap/api/services/geocoder/GeocodeSearch;

    iget-object v6, p0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/amap/api/services/geocoder/GeocodeSearch;-><init>(Landroid/content/Context;)V

    .line 151
    .local v5, "search":Lcom/amap/api/services/geocoder/GeocodeSearch;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    invoke-virtual {v5, v4}, Lcom/amap/api/services/geocoder/GeocodeSearch;->getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;

    move-result-object v3

    .line 154
    .local v3, "geoAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/geocoder/GeocodeAddress;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/geocoder/GeocodeAddress;

    .line 156
    .local v2, "geoAddress":Lcom/amap/api/services/geocoder/GeocodeAddress;
    new-instance v0, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 157
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v2}, Lcom/amap/api/services/geocoder/GeocodeAddress;->getFormatAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Lcom/amap/api/services/geocoder/GeocodeAddress;->getDistrict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Lcom/amap/api/services/geocoder/GeocodeAddress;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Lcom/amap/api/services/geocoder/GeocodeAddress;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/location/Address;->setLatitude(D)V

    .line 161
    invoke-virtual {v2}, Lcom/amap/api/services/geocoder/GeocodeAddress;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/location/Address;->setLongitude(D)V

    .line 163
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v0    # "address":Landroid/location/Address;
    .end local v2    # "geoAddress":Lcom/amap/api/services/geocoder/GeocodeAddress;
    .end local v3    # "geoAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/geocoder/GeocodeAddress;>;"
    :catch_0
    move-exception v6

    .line 167
    :cond_0
    return-object v1
.end method

.method public searchAddress(Ljava/lang/String;DDDD)Ljava/util/List;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "southeastLatitude"    # D
    .param p4, "southeastLongitude"    # D
    .param p6, "northwestLatitude"    # D
    .param p8, "northwestLongitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;->searchAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
