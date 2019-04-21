.class public Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;
.super Ljava/lang/Object;
.source "DeliveryStatusResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_DELIVERY_IN_PROGRESS:I = 0x3

.field public static final STATUS_ORDER_CANCELLED:I = 0x5

.field public static final STATUS_ORDER_DELIVERED:I = 0x4

.field public static final STATUS_ORDER_IN_PROGRESS:I = 0x2

.field public static final STATUS_ORDER_RECEIVED:I = 0x1


# instance fields
.field private mOrderNumber:Ljava/lang/String;

.field private mStatus:I

.field private mTimestamp:Ljava/util/Date;

.field private mTimestampInStoreLocalTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mOrderNumber:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mStatus:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 77
    .local v0, "tmpMTimestamp":J
    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    move-object v4, v5

    :goto_0
    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mTimestamp:Ljava/util/Date;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 79
    .local v2, "tmpMTimestampInStoreLocalTime":J
    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    :goto_1
    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mTimestampInStoreLocalTime:Ljava/util/Date;

    .line 80
    return-void

    .line 77
    .end local v2    # "tmpMTimestampInStoreLocalTime":J
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 79
    .restart local v2    # "tmpMTimestampInStoreLocalTime":J
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mOrderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mStatus:I

    return v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTimestampInStoreLocalTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mTimestampInStoreLocalTime:Ljava/util/Date;

    return-object v0
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mStatus:I

    .line 38
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mTimestamp:Ljava/util/Date;

    .line 46
    return-void
.end method

.method public setTimestampInStoreLocalTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestampInStoreLocalTime"    # Ljava/util/Date;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mTimestampInStoreLocalTime:Ljava/util/Date;

    .line 54
    return-void
.end method

.method public setmOrderNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOrderNumber"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mOrderNumber:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mOrderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mTimestamp:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mTimestampInStoreLocalTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->mTimestampInStoreLocalTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    return-void

    :cond_1
    move-wide v0, v2

    .line 66
    goto :goto_0
.end method
