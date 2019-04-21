.class public Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "AddressValidationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInvalidAddressElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAddressValid:Z

.field private mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mResultCode:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mIsAddressValid:Z

    .line 61
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mInvalidAddressElements:Ljava/util/List;

    .line 62
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getInvalidAddressElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mInvalidAddressElements:Ljava/util/List;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mResultCode:I

    return v0
.end method

.method public isAddressValid()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mIsAddressValid:Z

    return v0
.end method

.method public setAddressValid(Z)V
    .locals 0
    .param p1, "isAddressValid"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mIsAddressValid:Z

    .line 32
    return-void
.end method

.method public setInvalidAddressElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "invalidAddressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mInvalidAddressElements:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mResultCode:I

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mIsAddressValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->mInvalidAddressElements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 53
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
