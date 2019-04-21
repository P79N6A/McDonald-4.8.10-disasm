.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;
.super Ljava/lang/Object;
.source "MWGeoFencingConfigurationResponse.java"


# instance fields
.field public checkInTrackingTimeOut:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "check_in_tracking_time_out"
    .end annotation
.end field

.field public delayInNotification:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delay_in_notification"
    .end annotation
.end field

.field public proximityDistance:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "proximity_distance"
    .end annotation
.end field

.field public trackStoresNearDestinationOfOrder:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_stores_near_destination_of_order"
    .end annotation
.end field

.field public trackStoresNearOriginOfOrder:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_stores_near_origin_of_order"
    .end annotation
.end field

.field public trackedStoresBoundaryRadius:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tracked_stores_boundary_radius"
    .end annotation
.end field

.field public trackedStoresCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tracked_stores_count"
    .end annotation
.end field

.field public trackingInterval:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tracking_interval"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;->trackingInterval:Ljava/util/List;

    return-void
.end method
