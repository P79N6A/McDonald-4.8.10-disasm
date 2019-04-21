.class public Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;
.super Ljava/lang/Object;
.source "Offer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/Offer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndCondition"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDayOfWeek:I

.field public mHourOfDayFrom:I

.field public mHourOfDayTo:I

.field public mMinuteFrom:I

.field public mMinuteTo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 534
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mDayOfWeek:I

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mHourOfDayFrom:I

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mMinuteFrom:I

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mHourOfDayTo:I

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mMinuteTo:I

    .line 550
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mcdonalds/sdk/modules/models/Offer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mcdonalds/sdk/modules/models/Offer$1;

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mDayOfWeek:I

    return v0
.end method

.method public getHourOfDayFrom()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mHourOfDayFrom:I

    return v0
.end method

.method public getHourOfDayTo()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mHourOfDayTo:I

    return v0
.end method

.method public getMinuteFrom()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mMinuteFrom:I

    return v0
.end method

.method public getMinuteTo()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mMinuteTo:I

    return v0
.end method

.method public setDayOfWeek(I)V
    .locals 0
    .param p1, "dayOfWeek"    # I

    .prologue
    .line 483
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mDayOfWeek:I

    .line 484
    return-void
.end method

.method public setHourOfDayFrom(I)V
    .locals 0
    .param p1, "hourOfDayFrom"    # I

    .prologue
    .line 491
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mHourOfDayFrom:I

    .line 492
    return-void
.end method

.method public setHourOfDayTo(I)V
    .locals 0
    .param p1, "hourOfDayTo"    # I

    .prologue
    .line 507
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mHourOfDayTo:I

    .line 508
    return-void
.end method

.method public setMinuteFrom(I)V
    .locals 0
    .param p1, "minuteFrom"    # I

    .prologue
    .line 499
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mMinuteFrom:I

    .line 500
    return-void
.end method

.method public setMinuteTo(I)V
    .locals 0
    .param p1, "minuteTo"    # I

    .prologue
    .line 515
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mMinuteTo:I

    .line 516
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 527
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mDayOfWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mHourOfDayFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mMinuteFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mHourOfDayTo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->mMinuteTo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    return-void
.end method
