.class public Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;
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
    name = "SaleAmountCondition"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mMinimum:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 576
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;->mMinimum:D

    .line 588
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mcdonalds/sdk/modules/models/Offer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mcdonalds/sdk/modules/models/Offer$1;

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimum()D
    .locals 2

    .prologue
    .line 565
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;->mMinimum:D

    return-wide v0
.end method

.method public setMinimum(D)V
    .locals 1
    .param p1, "minimum"    # D

    .prologue
    .line 561
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;->mMinimum:D

    .line 562
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 573
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;->mMinimum:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 574
    return-void
.end method
