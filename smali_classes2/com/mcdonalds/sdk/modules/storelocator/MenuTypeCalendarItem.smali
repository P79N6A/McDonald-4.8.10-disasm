.class public Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
.super Ljava/lang/Object;
.source "MenuTypeCalendarItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mFromTime:Ljava/lang/String;

.field private mMenuTypeId:I

.field private mToTime:Ljava/lang/String;

.field private mWeekDay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->mFromTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuTypeId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->mMenuTypeId:I

    return v0
.end method

.method public getToTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->mToTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekDay()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->mWeekDay:I

    return v0
.end method

.method public setFromTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFromTime"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->mFromTime:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMenuTypeId(I)V
    .locals 0
    .param p1, "mMenuTypeId"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->mMenuTypeId:I

    .line 46
    return-void
.end method

.method public setToTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mToTime"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->mToTime:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setWeekDay(I)V
    .locals 0
    .param p1, "mWeekDay"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->mWeekDay:I

    .line 38
    return-void
.end method
