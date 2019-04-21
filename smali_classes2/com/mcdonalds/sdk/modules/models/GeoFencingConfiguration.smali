.class public Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;
.super Ljava/lang/Object;
.source "GeoFencingConfiguration.java"


# instance fields
.field public mCheckInTrackingTimeOut:Ljava/lang/Integer;

.field public mDelayInNotification:Ljava/lang/Integer;

.field public mProximityDistance:Ljava/lang/Integer;

.field public mTrackStoresNearDestinationOfOrder:Ljava/lang/Boolean;

.field public mTrackStoresNearOriginOfOrder:Ljava/lang/Boolean;

.field public mTrackedStoresBoundaryRadius:Ljava/lang/Integer;

.field public mTrackedStoresCount:Ljava/lang/Integer;

.field public mTrackingInterval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackingInterval:Ljava/util/List;

    .line 21
    return-void
.end method

.method public static fromMWGeoFencingConfiguration(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;)Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;
    .locals 5
    .param p0, "configurationResponse"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;

    .prologue
    .line 25
    if-nez p0, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 45
    :cond_0
    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;-><init>()V

    .line 30
    .local v0, "geoFencingConfiguration":Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;->proximityDistance:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->setProximityDistance(Ljava/lang/Integer;)V

    .line 31
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;->checkInTrackingTimeOut:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->setCheckInTrackingTimeOut(Ljava/lang/Integer;)V

    .line 32
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;->trackedStoresCount:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->setTrackedStoresCount(Ljava/lang/Integer;)V

    .line 33
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;->trackedStoresBoundaryRadius:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->setTrackedStoresBoundaryRadius(Ljava/lang/Integer;)V

    .line 34
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;->trackStoresNearOriginOfOrder:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->setTrackStoresNearOriginOfOrder(Ljava/lang/Boolean;)V

    .line 35
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;->trackStoresNearDestinationOfOrder:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->setTrackStoresNearDestinationOfOrder(Ljava/lang/Boolean;)V

    .line 36
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;->delayInNotification:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->setDelayInNotification(Ljava/lang/Integer;)V

    .line 38
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;->trackingInterval:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;->trackingInterval:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;

    .line 40
    .local v1, "trackingInterval":Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;
    iget-object v3, v0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackingInterval:Ljava/util/List;

    .line 41
    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;->fromMWGeoFencingTimeInterval(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;)Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCheckInTrackingTimeOut()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mCheckInTrackingTimeOut:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDelayInNotification()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mDelayInNotification:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProximityDistance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mProximityDistance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackStoresNearDestinationOfOrder()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackStoresNearDestinationOfOrder:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTrackStoresNearOriginOfOrder()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackStoresNearOriginOfOrder:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTrackedStoresBoundaryRadius()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackedStoresBoundaryRadius:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackedStoresCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackedStoresCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackingInterval()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackingInterval:Ljava/util/List;

    return-object v0
.end method

.method public setCheckInTrackingTimeOut(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "checkInTrackingTimeOut"    # Ljava/lang/Integer;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mCheckInTrackingTimeOut:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method public setDelayInNotification(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "delayInNotification"    # Ljava/lang/Integer;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mDelayInNotification:Ljava/lang/Integer;

    .line 111
    return-void
.end method

.method public setProximityDistance(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "proximityDistance"    # Ljava/lang/Integer;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mProximityDistance:Ljava/lang/Integer;

    .line 63
    return-void
.end method

.method public setTrackStoresNearDestinationOfOrder(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "trackStoresNearDestinationOfOrder"    # Ljava/lang/Boolean;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackStoresNearDestinationOfOrder:Ljava/lang/Boolean;

    .line 103
    return-void
.end method

.method public setTrackStoresNearOriginOfOrder(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "trackStoresNearOriginOfOrder"    # Ljava/lang/Boolean;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackStoresNearOriginOfOrder:Ljava/lang/Boolean;

    .line 95
    return-void
.end method

.method public setTrackedStoresBoundaryRadius(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "trackedStoresBoundaryRadius"    # Ljava/lang/Integer;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackedStoresBoundaryRadius:Ljava/lang/Integer;

    .line 87
    return-void
.end method

.method public setTrackedStoresCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "trackedStoresCount"    # Ljava/lang/Integer;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackedStoresCount:Ljava/lang/Integer;

    .line 79
    return-void
.end method

.method public setTrackingInterval(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "trackingInterval":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/GeoFencingTrackingInterval;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->mTrackingInterval:Ljava/util/List;

    .line 55
    return-void
.end method
