.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreMenuTypeCalendarItem;
.super Ljava/lang/Object;
.source "MWStoreMenuTypeCalendarItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public endTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EndTime"
    .end annotation
.end field

.field public menuTypeID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuTypeID"
    .end annotation
.end field

.field public startTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StartTime"
    .end annotation
.end field

.field public weekday:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Weekday"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toStoreMenuTypeCalendarItem()Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;-><init>()V

    .line 23
    .local v0, "menuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreMenuTypeCalendarItem;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setFromTime(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreMenuTypeCalendarItem;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setToTime(Ljava/lang/String;)V

    .line 25
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreMenuTypeCalendarItem;->menuTypeID:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setMenuTypeId(I)V

    .line 26
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStoreMenuTypeCalendarItem;->weekday:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setWeekDay(I)V

    .line 28
    return-object v0
.end method
