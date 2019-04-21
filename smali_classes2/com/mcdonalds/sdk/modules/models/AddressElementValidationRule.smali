.class public Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;
.super Ljava/lang/Object;
.source "AddressElementValidationRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field private mDisplayOrder:I

.field private mValidationLength:I

.field private mValidationRegex:Ljava/lang/String;

.field private mValidationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "tmpMAddressElementType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mDisplayOrder:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationType:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationLength:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationRegex:Ljava/lang/String;

    .line 81
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mDisplayOrder:I

    return v0
.end method

.method public getValidationLength()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationLength:I

    return v0
.end method

.method public getValidationRegex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationRegex:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationType:I

    return v0
.end method

.method public setAddressElementType(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)V
    .locals 0
    .param p1, "addressElementType"    # Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 22
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mDisplayOrder:I

    .line 30
    return-void
.end method

.method public setValidationLength(I)V
    .locals 0
    .param p1, "validationLength"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationLength:I

    .line 46
    return-void
.end method

.method public setValidationRegex(Ljava/lang/String;)V
    .locals 0
    .param p1, "validationRegex"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationRegex:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setValidationType(I)V
    .locals 0
    .param p1, "validationType"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationType:I

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mDisplayOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mValidationRegex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
