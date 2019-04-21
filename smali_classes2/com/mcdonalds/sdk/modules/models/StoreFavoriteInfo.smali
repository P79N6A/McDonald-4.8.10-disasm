.class public Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
.super Ljava/lang/Object;
.source "StoreFavoriteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFavoriteId:I

.field private mFavoriteNickName:Ljava/lang/String;

.field private mStoreId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mStoreId:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mFavoriteId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mFavoriteNickName:Ljava/lang/String;

    .line 58
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

.method public getFavoriteId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mFavoriteId:I

    return v0
.end method

.method public getFavoriteNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mFavoriteNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mStoreId:I

    return v0
.end method

.method public setFavoriteId(I)V
    .locals 0
    .param p1, "favoriteId"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mFavoriteId:I

    .line 28
    return-void
.end method

.method public setFavoriteNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "favoriteNickName"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mFavoriteNickName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setStoreId(I)V
    .locals 0
    .param p1, "storeId"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mStoreId:I

    .line 20
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mStoreId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mFavoriteId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->mFavoriteNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return-void
.end method
