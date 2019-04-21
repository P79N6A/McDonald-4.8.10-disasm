.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingTrackingInterval;
.super Ljava/lang/Object;
.source "MWGeoFencingTrackingInterval.java"


# instance fields
.field public distanceFrom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "distance_from"
    .end annotation
.end field

.field public distanceTo:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "distance_to"
    .end annotation
.end field

.field public gpsAccuracyDesired:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gps_accuracy_desired"
    .end annotation
.end field

.field public intervalOff:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interval_off"
    .end annotation
.end field

.field public intervalOn:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interval_on"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
