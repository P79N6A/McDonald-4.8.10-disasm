.class public Lcom/mcdonalds/sdk/modules/models/OfferAction;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OfferAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdjustedPriceForPrice:Ljava/lang/Double;

.field private mDiscountType:Ljava/lang/Integer;

.field private mOfferRedemptionType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

.field private mPriceFromCode:Ljava/lang/String;

.field private mValue:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferAction$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OfferAction$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 93
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 96
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mDiscountType:Ljava/lang/Integer;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mPriceFromCode:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, "tmpMOfferRedemptionType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mOfferRedemptionType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .line 100
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mValue:Ljava/lang/Double;

    .line 101
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mAdjustedPriceForPrice:Ljava/lang/Double;

    .line 102
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->values()[Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getAdjustedPriceForPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mAdjustedPriceForPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public getDiscountType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mDiscountType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOfferRedemptionType()Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mOfferRedemptionType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    return-object v0
.end method

.method public getPriceFromCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mPriceFromCode:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mValue:Ljava/lang/Double;

    return-object v0
.end method

.method public setAdjustedPriceForPrice(Ljava/lang/Double;)V
    .locals 0
    .param p1, "adjustedPriceForPrice"    # Ljava/lang/Double;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mAdjustedPriceForPrice:Ljava/lang/Double;

    .line 64
    return-void
.end method

.method public setDiscountType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "discountType"    # Ljava/lang/Integer;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mDiscountType:Ljava/lang/Integer;

    .line 28
    return-void
.end method

.method public setOfferRedemptionType(Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;)V
    .locals 0
    .param p1, "offerRedemptionType"    # Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mOfferRedemptionType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .line 56
    return-void
.end method

.method public setOfferRedemptionType(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "offerRedemptionType"    # Ljava/lang/Integer;

    .prologue
    .line 43
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->values()[Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mOfferRedemptionType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .line 44
    return-void
.end method

.method public setPriceFromCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "priceFromCode"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mPriceFromCode:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mValue:Ljava/lang/Double;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfferAction{mDiscountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mDiscountType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPriceFromCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mPriceFromCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOfferRedemptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mOfferRedemptionType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mValue:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdjustedPriceForPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mAdjustedPriceForPrice:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

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
    .line 85
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mDiscountType:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mPriceFromCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mOfferRedemptionType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mValue:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mAdjustedPriceForPrice:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 90
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferAction;->mOfferRedemptionType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
