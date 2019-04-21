.class public Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;
.super Ljava/lang/Object;
.source "OfferBarCodeData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBarCodeContent:Ljava/lang/String;

.field private mQrCode:Ljava/lang/String;

.field private mRandomCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mQrCode:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mRandomCode:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mBarCodeContent:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getBarCodeContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mBarCodeContent:Ljava/lang/String;

    return-object v0
.end method

.method public getQrCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mQrCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mRandomCode:Ljava/lang/String;

    return-object v0
.end method

.method public setBarCodeContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "barCodeContent"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mBarCodeContent:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setQrCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "qrCode"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mQrCode:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setRandomCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "randomCode"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mRandomCode:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfferBarCodeData{mQrCode=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mQrCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mRandomCode=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mRandomCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mBarCodeContent=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mBarCodeContent:Ljava/lang/String;

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
    .line 58
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mQrCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mRandomCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->mBarCodeContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
