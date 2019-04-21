.class public Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "GetAddressElementsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddressElementDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressElementTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementType;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressElementValidationRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementTypes:Ljava/util/List;

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementTypes:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 64
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementDependencies:Ljava/util/List;

    .line 65
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementValidationRules:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getAddressElementDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementDependencies:Ljava/util/List;

    return-object v0
.end method

.method public getAddressElementTypes()Ljava/util/List;
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
    .line 20
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementTypes:Ljava/util/List;

    return-object v0
.end method

.method public getAddressElementValidationRules()Ljava/util/List;
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
    .line 36
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementValidationRules:Ljava/util/List;

    return-object v0
.end method

.method public setAddressElementDependencies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "addressElementDependencies":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementDependency;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementDependencies:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setAddressElementTypes(Ljava/util/List;)V
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
    .line 24
    .local p1, "addressElementTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementType;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementTypes:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setAddressElementValidationRules(Ljava/util/List;)V
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
    .line 40
    .local p1, "addressElementValidationRules":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementValidationRules:Ljava/util/List;

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementDependencies:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->mAddressElementValidationRules:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 54
    return-void
.end method
