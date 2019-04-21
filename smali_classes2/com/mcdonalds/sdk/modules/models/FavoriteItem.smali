.class public Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
.super Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
.source "FavoriteItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFavoriteId:Ljava/lang/Integer;

.field private mType:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;-><init>()V

    .line 86
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;-><init>(Landroid/os/Parcel;)V

    .line 90
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mFavoriteId:Ljava/lang/Integer;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, "tmpMType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mType:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    .line 93
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->values()[Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getFavoriteId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mFavoriteId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mType:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    return-object v0
.end method

.method public setFavoriteId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "favoriteId"    # Ljava/lang/Integer;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mFavoriteId:Ljava/lang/Integer;

    .line 19
    return-void
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 30
    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->getType(I)Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mType:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    .line 31
    return-void
.end method

.method public setType(Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;)V
    .locals 0
    .param p1, "type"    # Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mType:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FavoriteOrderProduct{mFavoriteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mFavoriteId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mType:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mOrderProducts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mFavoriteId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mType:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->mType:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
