.class public Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;
.super Ljava/lang/Object;
.source "KioskCheckinResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBarcode:Landroid/graphics/Bitmap;

.field private final mRandomCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;
    .param p2, "randomCode"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->mBarcode:Landroid/graphics/Bitmap;

    .line 20
    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->mRandomCode:Ljava/lang/String;

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->mBarcode:Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->mRandomCode:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getBarcode()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->mBarcode:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRandomCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->mRandomCode:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KioskCheckinResponse{mBarcode=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->mBarcode:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->mBarcode:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->mRandomCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
