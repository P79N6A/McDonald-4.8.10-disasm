.class public Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;
.super Ljava/lang/Object;
.source "GeoFencingTrackingInterval.java"


# instance fields
.field public mDistanceFrom:Ljava/lang/Integer;

.field public mDistanceTo:Ljava/lang/Integer;

.field public mGPSAccuracyDesired:Ljava/lang/String;

.field public mIntervalOff:Ljava/lang/Integer;

.field public mIntervalOn:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "gpsAccuracy"    # Ljava/lang/String;
    .param p2, "intervalOff"    # Ljava/lang/Integer;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mGPSAccuracyDesired:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mIntervalOff:Ljava/lang/Integer;

    .line 19
    return-void
.end method

.method public static fromMWGeoFencingTimeInterval(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;)Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;
    .locals 2
    .param p0, "timeInterval"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;-><init>()V

    .line 28
    .local v0, "geoFencingTrackingInterval":Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;->distanceFrom:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->setDistanceFrom(Ljava/lang/Integer;)V

    .line 29
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;->distanceTo:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->setDistanceTo(Ljava/lang/Integer;)V

    .line 30
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;->intervalOn:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->setIntervalOn(Ljava/lang/Integer;)V

    .line 31
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;->intervalOff:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->setIntervalOff(Ljava/lang/Integer;)V

    .line 32
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;->gpsAccuracyDesired:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->setGPSAccuracyDesired(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDistanceFrom()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mDistanceFrom:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDistanceTo()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mDistanceTo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGPSAccuracyDesired()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mGPSAccuracyDesired:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalOff()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mIntervalOff:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIntervalOn()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mIntervalOn:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDistanceFrom(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "distanceFrom"    # Ljava/lang/Integer;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mDistanceFrom:Ljava/lang/Integer;

    .line 42
    return-void
.end method

.method public setDistanceTo(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "distanceTo"    # Ljava/lang/Integer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mDistanceTo:Ljava/lang/Integer;

    .line 50
    return-void
.end method

.method public setGPSAccuracyDesired(Ljava/lang/String;)V
    .locals 0
    .param p1, "gpsAccuracyDesired"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mGPSAccuracyDesired:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setIntervalOff(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "intervalOff"    # Ljava/lang/Integer;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mIntervalOff:Ljava/lang/Integer;

    .line 66
    return-void
.end method

.method public setIntervalOn(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "intervalOn"    # Ljava/lang/Integer;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->mIntervalOn:Ljava/lang/Integer;

    .line 58
    return-void
.end method
