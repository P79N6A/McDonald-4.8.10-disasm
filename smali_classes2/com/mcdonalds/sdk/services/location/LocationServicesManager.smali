.class public Lcom/mcdonalds/sdk/services/location/LocationServicesManager;
.super Ljava/lang/Object;
.source "LocationServicesManager.java"


# static fields
.field private static final AUTONAVI_KEY:Ljava/lang/String; = "connectors.AutoNavi"

.field public static final REQUEST_MODE_ACCURACY:I = 0x1

.field public static final REQUEST_MODE_BATTERY:I

.field private static sInstance:Lcom/mcdonalds/sdk/services/location/LocationServicesManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "connectors.AutoNavi"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/AutonaviLocationProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->areGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/AndroidLocationProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;

    goto :goto_0
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->sInstance:Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    .line 130
    return-void
.end method

.method public static getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->sInstance:Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->sInstance:Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    .line 125
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->sInstance:Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    return-object v0
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 94
    const/4 v1, 0x0

    .line 97
    .local v1, "locationMode":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 98
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 116
    :cond_0
    :goto_0
    return v3

    .line 104
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 112
    :goto_1
    if-nez v1, :cond_0

    move v3, v4

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_providers_allowed"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "locationProviders":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public areGooglePlayServicesAvailable()Z
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableUpdates()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;->disableLocationUpdates()V

    .line 88
    return-void
.end method

.method public getCurrentUserLocation()Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getMockLocation()Landroid/location/Location;

    move-result-object v0

    .line 57
    .local v0, "mockLocation":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 61
    .end local v0    # "mockLocation":Landroid/location/Location;
    :goto_0
    return-object v0

    .restart local v0    # "mockLocation":Landroid/location/Location;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;

    invoke-interface {v1}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public requestSingleUpdate(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;->requestSingleUpdate(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V

    .line 76
    return-void
.end method

.method public requestUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;->enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V

    .line 80
    return-void
.end method

.method public requestUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;
    .param p2, "requestMode"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;->enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;I)V

    .line 84
    return-void
.end method

.method public searchAddress(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 134
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;->searchAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchAddress(Ljava/lang/String;DDDD)Ljava/util/List;
    .locals 10
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
    .line 139
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->mLocationProvider:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;->searchAddress(Ljava/lang/String;DDDD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
