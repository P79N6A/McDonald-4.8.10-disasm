.class public Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;
.super Ljava/lang/Object;
.source "AndroidLocationProvider.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;


# static fields
.field private static final REQUEST_MODE_ACCURACY_MIN_DISTANCE:J = 0xaL

.field private static final REQUEST_MODE_ACCURACY_MIN_TIME:J

.field private static final REQUEST_MODE_BATTERY_MIN_DISTANCE:J = 0x64L

.field private static final REQUEST_MODE_BATTERY_MIN_TIME:J


# instance fields
.field private mAndroidLocationListener:Lcom/mcdonalds/sdk/services/location/listeners/SimpleAndroidLocationListener;

.field private mGeocoder:Landroid/location/Geocoder;

.field private mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->REQUEST_MODE_BATTERY_MIN_TIME:J

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->REQUEST_MODE_ACCURACY_MIN_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider$1;-><init>(Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mAndroidLocationListener:Lcom/mcdonalds/sdk/services/location/listeners/SimpleAndroidLocationListener;

    .line 50
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;)Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    return-object v0
.end method


# virtual methods
.method public disableLocationUpdates()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mAndroidLocationListener:Lcom/mcdonalds/sdk/services/location/listeners/SimpleAndroidLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 131
    return-void
.end method

.method public enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;I)V

    .line 91
    return-void
.end method

.method public enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;I)V
    .locals 10
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;
    .param p2, "requestMode"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x2

    .line 95
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .line 96
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 99
    .local v6, "criteria":Landroid/location/Criteria;
    if-nez p2, :cond_1

    .line 100
    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 101
    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 103
    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->REQUEST_MODE_BATTERY_MIN_TIME:J

    .line 104
    .local v2, "minTime":J
    const-wide/16 v8, 0x64

    .line 122
    .local v8, "minDistance":J
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    long-to-float v4, v8

    iget-object v5, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mAndroidLocationListener:Lcom/mcdonalds/sdk/services/location/listeners/SimpleAndroidLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 126
    :cond_0
    return-void

    .line 106
    .end local v1    # "provider":Ljava/lang/String;
    .end local v2    # "minTime":J
    .end local v8    # "minDistance":J
    :cond_1
    if-ne p2, v4, :cond_2

    .line 107
    invoke-virtual {v6, v5}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 108
    invoke-virtual {v6, v5}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 110
    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->REQUEST_MODE_ACCURACY_MIN_TIME:J

    .line 111
    .restart local v2    # "minTime":J
    const-wide/16 v8, 0xa

    .restart local v8    # "minDistance":J
    goto :goto_0

    .line 114
    .end local v2    # "minTime":J
    .end local v8    # "minDistance":J
    :cond_2
    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 115
    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 117
    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->REQUEST_MODE_BATTERY_MIN_TIME:J

    .line 118
    .restart local v2    # "minTime":J
    const-wide/16 v8, 0x64

    .restart local v8    # "minDistance":J
    goto :goto_0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 18

    .prologue
    .line 57
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/32 v16, 0x493e0

    sub-long v10, v14, v16

    .line 58
    .local v10, "minTime":J
    const-wide/16 v6, 0x0

    .line 59
    .local v6, "bestTime":J
    const v3, 0x44bb8000    # 1500.0f

    .line 61
    .local v3, "bestAccuracy":F
    const/4 v4, 0x0

    .line 62
    .local v4, "bestResult":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v14}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 64
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

    .line 65
    .local v9, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v15, v9}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 66
    .local v5, "location":Landroid/location/Location;
    if-eqz v5, :cond_0

    .line 67
    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    .line 68
    .local v2, "accuracy":F
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    .line 70
    .local v12, "time":J
    cmp-long v15, v12, v10

    if-lez v15, :cond_1

    cmpg-float v15, v2, v3

    if-gez v15, :cond_1

    .line 71
    move-object v4, v5

    .line 72
    move v3, v2

    .line 73
    move-wide v6, v12

    goto :goto_0

    .line 74
    :cond_1
    cmp-long v15, v12, v10

    if-gez v15, :cond_0

    const v15, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v15, v3, v15

    if-nez v15, :cond_0

    cmp-long v15, v12, v6

    if-lez v15, :cond_0

    .line 75
    move-object v4, v5

    .line 76
    move-wide v6, v12

    goto :goto_0

    .line 81
    .end local v2    # "accuracy":F
    .end local v5    # "location":Landroid/location/Location;
    .end local v9    # "provider":Ljava/lang/String;
    .end local v12    # "time":J
    :cond_2
    if-eqz v4, :cond_3

    .line 82
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mLocation:Landroid/location/Location;

    .line 85
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mLocation:Landroid/location/Location;

    return-object v14
.end method

.method public requestSingleUpdate(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .prologue
    .line 136
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 137
    .local v0, "criteria":Landroid/location/Criteria;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 138
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 140
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mAndroidLocationListener:Lcom/mcdonalds/sdk/services/location/listeners/SimpleAndroidLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 141
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
    const-wide/16 v2, 0x0

    .line 146
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    invoke-virtual/range {v0 .. v9}, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->searchAddress(Ljava/lang/String;DDDD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchAddress(Ljava/lang/String;DDDD)Ljava/util/List;
    .locals 14
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
    .line 151
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mGeocoder:Landroid/location/Geocoder;

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mGeocoder:Landroid/location/Geocoder;

    .line 159
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;->mGeocoder:Landroid/location/Geocoder;

    const/4 v3, 0x5

    move-object v2, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-virtual/range {v1 .. v11}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v12

    .line 162
    .local v12, "e":Ljava/io/IOException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    goto :goto_0

    .line 168
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v12    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
