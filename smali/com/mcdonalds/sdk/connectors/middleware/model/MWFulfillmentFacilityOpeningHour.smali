.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;
.super Ljava/lang/Object;
.source "MWFulfillmentFacilityOpeningHour.java"


# instance fields
.field public breakfastFrom:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BreakfastFrom"
    .end annotation
.end field

.field public breakfastTo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BreakfastTo"
    .end annotation
.end field

.field public fromTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FromTime"
    .end annotation
.end field

.field public fulfilmentFacilityCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FulfilmentFacilityCode"
    .end annotation
.end field

.field public toTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ToTime"
    .end annotation
.end field

.field public weekDay:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "WeekDay"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toFulfillmentFacilityOpeningHours(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "fulfillmentFacilityOpeningHours":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;>;"
    const/4 v1, 0x0

    .line 34
    .local v1, "fulfillmentFacilityOpeningHourList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "fulfillmentFacilityOpeningHourList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .restart local v1    # "fulfillmentFacilityOpeningHourList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;

    .line 37
    .local v0, "fFacilityOpeningHour":Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;->toFulfillmentFacilityOpeningHour()Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    .end local v0    # "fFacilityOpeningHour":Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public toFulfillmentFacilityOpeningHour()Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;-><init>()V

    .line 47
    .local v0, "fulfillmentFacilityOpeningHour":Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;->breakfastFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->setBreakfastFrom(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;->breakfastTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->setBreakfastTo(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;->fromTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->setFromTime(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;->toTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->setToTime(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;->weekDay:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->setWeekDay(Ljava/lang/Integer;)V

    .line 52
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;->fulfilmentFacilityCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->setFulfilmentFacilityCode(Ljava/lang/String;)V

    .line 53
    return-object v0
.end method
