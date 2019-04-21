.class public Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;
.super Ljava/lang/Object;
.source "ExpectedTenderType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public paymentMethodId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentMethodId"
    .end annotation
.end field

.field public tenderType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tenderType"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;->paymentMethodId:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;->tenderType:I

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;->paymentMethodId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/ExpectedTenderType;->tenderType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
.end method
