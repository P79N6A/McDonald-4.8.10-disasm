.class public Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OfferProductOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferProductOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLongName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mProductCode:Ljava/lang/String;

.field private mShortName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 84
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mLongName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mProductCode:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mShortName:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public clone()Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;-><init>()V

    .line 52
    .local v0, "newOfferProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->setProductCode(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getLongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->setLongName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->setLongName(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->setShortName(Ljava/lang/String;)V

    .line 56
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->clone()Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mLongName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mProductCode:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mShortName:Ljava/lang/String;

    return-object v0
.end method

.method public setLongName(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mLongName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setProductCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "productCode"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mProductCode:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mShortName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfferProductOption{mLongName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mLongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mProductCode=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mProductCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mShortName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mLongName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mProductCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->mShortName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void
.end method
