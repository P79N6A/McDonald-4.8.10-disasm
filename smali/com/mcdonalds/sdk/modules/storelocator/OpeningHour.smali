.class public Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;
.super Ljava/lang/Object;
.source "OpeningHour.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBreakfastFrom:Ljava/lang/String;

.field private mBreakfastTo:Ljava/lang/String;

.field private mDayOfTheWeek:Ljava/lang/Integer;

.field private mFromTime:Ljava/lang/String;

.field private mToTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBreakfastFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;->mBreakfastFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getBreakfastTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;->mBreakfastTo:Ljava/lang/String;

    return-object v0
.end method

.method public getDayOfTheWeek()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;->mDayOfTheWeek:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFromTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;->mFromTime:Ljava/lang/String;

    return-object v0
.end method

.method public getToTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;->mToTime:Ljava/lang/String;

    return-object v0
.end method

.method public setBreakfastFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBreakfastFrom"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;->mBreakfastFrom:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setBreakfastTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBreakfastTo"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;->mBreakfastTo:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDayOfTheWeek(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mDayOfTheWeek"    # Ljava/lang/Integer;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;->mDayOfTheWeek:Ljava/lang/Integer;

    .line 21
    return-void
.end method

.method public setFromTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFromTime"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;->mFromTime:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setToTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mToTime"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;->mToTime:Ljava/lang/String;

    .line 37
    return-void
.end method
