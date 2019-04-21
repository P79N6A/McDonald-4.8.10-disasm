.class public Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "AddressElementDependency.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddressElementCanFilteredBy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementType;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field private mAddressToBeCleared:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "tmpMAddressElementType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressElementCanFilteredBy:Ljava/util/List;

    .line 64
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressElementCanFilteredBy:Ljava/util/List;

    const-class v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressToBeCleared:Ljava/util/List;

    .line 67
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressToBeCleared:Ljava/util/List;

    const-class v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 68
    return-void

    .line 61
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
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getAddressElementCanFilteredBy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressElementCanFilteredBy:Ljava/util/List;

    return-object v0
.end method

.method public getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    return-object v0
.end method

.method public getAddressToBeCleared()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressToBeCleared:Ljava/util/List;

    return-object v0
.end method

.method public setAddressElementCanFilteredBy(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "addressElementCanFilteredBy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementType;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressElementCanFilteredBy:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setAddressElementType(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)V
    .locals 0
    .param p1, "addressElementType"    # Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 25
    return-void
.end method

.method public setAddressToBeCleared(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "addressToBeCleared":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementType;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressToBeCleared:Ljava/util/List;

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressElementCanFilteredBy:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressToBeCleared:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 54
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->mAddressElementType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
