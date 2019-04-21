.class public Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;
.super Ljava/lang/Object;
.source "GoogleLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;


# static fields
.field private static final REQUEST_MODE_ACCURACY_FASTEST_INTERVAL:J

.field private static final REQUEST_MODE_ACCURACY_UPDATE_INTERVAL:J

.field private static final REQUEST_MODE_BATTERY_FASTEST_INTERVAL:J

.field private static final REQUEST_MODE_BATTERY_UPDATE_INTERVAL:J


# instance fields
.field private mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mGeocoder:Landroid/location/Geocoder;

.field private mGoogleLocationListener:Lcom/google/android/gms/location/LocationListener;

.field private mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

.field private mLocation:Landroid/location/Location;

.field private mPendingRequest:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_BATTERY_UPDATE_INTERVAL:J

    .line 31
    sget-wide v0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_BATTERY_UPDATE_INTERVAL:J

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_BATTERY_FASTEST_INTERVAL:J

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_ACCURACY_UPDATE_INTERVAL:J

    .line 34
    sget-wide v0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_ACCURACY_UPDATE_INTERVAL:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_ACCURACY_FASTEST_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider$1;-><init>(Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mGoogleLocationListener:Lcom/google/android/gms/location/LocationListener;

    .line 54
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 55
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;)Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    return-object v0
.end method

.method private requestUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;
    .param p2, "request"    # Lcom/google/android/gms/location/LocationRequest;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .line 149
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mGoogleLocationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mPendingRequest:Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0
.end method


# virtual methods
.method public disableLocationUpdates()V
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .line 102
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mGoogleLocationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;I)V

    .line 70
    return-void
.end method

.method public enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;
    .param p2, "requestMode"    # I

    .prologue
    const/16 v2, 0x66

    .line 76
    if-nez p2, :cond_0

    .line 77
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_BATTERY_UPDATE_INTERVAL:J

    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_BATTERY_FASTEST_INTERVAL:J

    .line 80
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 95
    .local v0, "request":Lcom/google/android/gms/location/LocationRequest;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->requestUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;Lcom/google/android/gms/location/LocationRequest;)V

    .line 96
    return-void

    .line 82
    .end local v0    # "request":Lcom/google/android/gms/location/LocationRequest;
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 83
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const/16 v2, 0x64

    .line 84
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_ACCURACY_UPDATE_INTERVAL:J

    .line 85
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_ACCURACY_FASTEST_INTERVAL:J

    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .restart local v0    # "request":Lcom/google/android/gms/location/LocationRequest;
    goto :goto_0

    .line 89
    .end local v0    # "request":Lcom/google/android/gms/location/LocationRequest;
    :cond_1
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_BATTERY_UPDATE_INTERVAL:J

    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    sget-wide v2, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->REQUEST_MODE_BATTERY_FASTEST_INTERVAL:J

    .line 92
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .restart local v0    # "request":Lcom/google/android/gms/location/LocationRequest;
    goto :goto_0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mLocation:Landroid/location/Location;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mPendingRequest:Lcom/google/android/gms/location/LocationRequest;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mPendingRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->requestUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;Lcom/google/android/gms/location/LocationRequest;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mPendingRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mListener:Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mLocation:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;->onLocationChanged(Landroid/location/Location;)V

    .line 167
    :cond_1
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 172
    return-void
.end method

.method public requestSingleUpdate(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;

    .prologue
    .line 111
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const/4 v2, 0x1

    .line 112
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const/16 v2, 0x64

    .line 113
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 114
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 116
    .local v0, "request":Lcom/google/android/gms/location/LocationRequest;
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->requestUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;Lcom/google/android/gms/location/LocationRequest;)V

    .line 117
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

    .line 122
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    invoke-virtual/range {v0 .. v9}, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->searchAddress(Ljava/lang/String;DDDD)Ljava/util/List;

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
    .line 127
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mGeocoder:Landroid/location/Geocoder;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mGeocoder:Landroid/location/Geocoder;

    .line 135
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/location/providers/GoogleLocationProvider;->mGeocoder:Landroid/location/Geocoder;

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

    .line 144
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v12

    .line 138
    .local v12, "e":Ljava/io/IOException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    goto :goto_0

    .line 144
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v12    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
