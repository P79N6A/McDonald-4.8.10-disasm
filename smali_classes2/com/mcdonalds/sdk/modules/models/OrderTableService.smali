.class public Lcom/mcdonalds/sdk/modules/models/OrderTableService;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OrderTableService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderTableService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTableServiceId:I

.field private mTableTagId:I

.field private mTablseServiceZoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderTableService$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderTableService$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTableServiceId:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTablseServiceZoneId:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTableTagId:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getTableServiceId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTableServiceId:I

    return v0
.end method

.method public getTableTagId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTableTagId:I

    return v0
.end method

.method public getTablseServiceZoneId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTablseServiceZoneId:I

    return v0
.end method

.method public setTableServiceId(I)V
    .locals 0
    .param p1, "tableServiceId"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTableServiceId:I

    .line 36
    return-void
.end method

.method public setTableTagId(I)V
    .locals 0
    .param p1, "tableTagId"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTableTagId:I

    .line 20
    return-void
.end method

.method public setTablseServiceZoneId(I)V
    .locals 0
    .param p1, "tablseServiceZoneId"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTablseServiceZoneId:I

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTableServiceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTablseServiceZoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->mTableTagId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
