.class public Lcom/mcdonalds/sdk/modules/models/OfferCategory;
.super Ljava/lang/Object;
.source "OfferCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferCategory$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OfferCategory$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->mDescription:Ljava/lang/String;

    .line 47
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->mId:Ljava/lang/Integer;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->mId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDescription"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->mDescription:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mId"    # Ljava/lang/Integer;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->mId:Ljava/lang/Integer;

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->mId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 40
    return-void
.end method
