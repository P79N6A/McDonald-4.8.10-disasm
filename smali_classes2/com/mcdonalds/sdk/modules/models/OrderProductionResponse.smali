.class public Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OrderProductionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayOrderNumber:Ljava/lang/String;

.field private mMajor:Ljava/lang/String;

.field private mMdsOrderNumber:Ljava/lang/String;

.field private mMinor:Ljava/lang/String;

.field private mPointOfDistribution:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 74
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "tmpMPointOfDistribution":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mPointOfDistribution:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMajor:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMinor:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mDisplayOrderNumber:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMdsOrderNumber:Ljava/lang/String;

    .line 83
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->values()[Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mDisplayOrderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMajor:Ljava/lang/String;

    return-object v0
.end method

.method public getMdsOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMdsOrderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMinor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMinor:Ljava/lang/String;

    return-object v0
.end method

.method public getPointOfDistribution()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mPointOfDistribution:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    return-object v0
.end method

.method public setDisplayOrderNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayOrderNumber"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mDisplayOrderNumber:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setMajor(Ljava/lang/String;)V
    .locals 0
    .param p1, "major"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMajor:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setMdsOrderNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mdsOrderNumber"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMdsOrderNumber:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setMinor(Ljava/lang/String;)V
    .locals 0
    .param p1, "minor"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMinor:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPointOfDistribution(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V
    .locals 0
    .param p1, "pointOfDistribution"    # Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mPointOfDistribution:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mPointOfDistribution:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMajor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMinor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mDisplayOrderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mMdsOrderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->mPointOfDistribution:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->ordinal()I

    move-result v0

    goto :goto_0
.end method
