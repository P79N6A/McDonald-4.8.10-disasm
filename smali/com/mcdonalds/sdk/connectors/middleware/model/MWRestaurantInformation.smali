.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurantInformation;
.super Ljava/lang/Object;
.source "MWRestaurantInformation.java"


# instance fields
.field public fulfilmentFacilityOpeningHours:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FulfilmentFacilityOpeningHours"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;",
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

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurantInformation;->fulfilmentFacilityOpeningHours:Ljava/util/List;

    return-void
.end method
