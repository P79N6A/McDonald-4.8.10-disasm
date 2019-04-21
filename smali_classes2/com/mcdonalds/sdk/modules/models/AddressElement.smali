.class public Lcom/mcdonalds/sdk/modules/models/AddressElement;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "AddressElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field private mValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElement$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElement$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "tmpMAddressElementType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElement;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 51
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElement;->mValue:Ljava/util/List;

    .line 52
    return-void

    .line 50
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
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElement;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElement;->mValue:Ljava/util/List;

    return-object v0
.end method

.method public setAddressElementType(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)V
    .locals 0
    .param p1, "addressElementType"    # Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElement;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 23
    return-void
.end method

.method public setValue(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElement;->mValue:Ljava/util/List;

    .line 31
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElement;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElement;->mValue:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 43
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElement;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
