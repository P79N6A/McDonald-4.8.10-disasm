.class public Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;
.super Ljava/lang/Object;
.source "FulfillmentFacilityOpeningHour.java"


# instance fields
.field private mBreakfastFrom:Ljava/lang/String;

.field private mBreakfastTo:Ljava/lang/String;

.field private mFromTime:Ljava/lang/String;

.field private mFulfilmentFacilityCode:Ljava/lang/String;

.field private mToTime:Ljava/lang/String;

.field private mWeekDay:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBreakfastFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mBreakfastFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getBreakfastTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mBreakfastTo:Ljava/lang/String;

    return-object v0
.end method

.method public getFromTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mFromTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFulfilmentFacilityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mFulfilmentFacilityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getToTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mToTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekDay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mWeekDay:Ljava/lang/Integer;

    return-object v0
.end method

.method public setBreakfastFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "breakfastFrom"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mBreakfastFrom:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setBreakfastTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "breakfastTo"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mBreakfastTo:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setFromTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromTime"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mFromTime:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setFulfilmentFacilityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "fulfilmentFacilityCode"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mFulfilmentFacilityCode:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setToTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "toTime"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mToTime:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setWeekDay(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "weekDay"    # Ljava/lang/Integer;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;->mWeekDay:Ljava/lang/Integer;

    .line 31
    return-void
.end method
