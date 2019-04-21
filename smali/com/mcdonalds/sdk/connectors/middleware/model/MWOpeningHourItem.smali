.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
.super Ljava/lang/Object;
.source "MWOpeningHourItem.java"

# interfaces
.implements Ljava/io/Serializable;


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

.field public dayOfTheWeek:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DayOfTheWeek"
    .end annotation
.end field

.field public fromTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FromTime"
    .end annotation
.end field

.field public toTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ToTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toStoreMenuTypeCalendarItem()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;>;"
    new-instance v2, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;-><init>()V

    .line 33
    .local v2, "lunchMenuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->breakfastTo:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->breakfastTo:Ljava/lang/String;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->breakfastTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setFromTime(Ljava/lang/String;)V

    .line 39
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->fromTime:Ljava/lang/String;

    const-string v4, "00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toTime:Ljava/lang/String;

    const-string v4, "23:59"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->breakfastFrom:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 40
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->breakfastFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setToTime(Ljava/lang/String;)V

    .line 45
    :goto_1
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->dayOfTheWeek:I

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setWeekDay(I)V

    .line 46
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setMenuTypeId(I)V

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;-><init>()V

    .line 50
    .local v0, "breakFastMenuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->breakfastFrom:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setFromTime(Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->breakfastTo:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 52
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->breakfastTo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setToTime(Ljava/lang/String;)V

    .line 56
    :goto_2
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->dayOfTheWeek:I

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setWeekDay(I)V

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setMenuTypeId(I)V

    .line 58
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-object v1

    .line 36
    .end local v0    # "breakFastMenuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->fromTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setFromTime(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setToTime(Ljava/lang/String;)V

    goto :goto_1

    .line 54
    .restart local v0    # "breakFastMenuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toTime:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setToTime(Ljava/lang/String;)V

    goto :goto_2
.end method
