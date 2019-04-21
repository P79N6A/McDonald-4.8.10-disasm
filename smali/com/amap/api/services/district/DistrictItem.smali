.class public final Lcom/amap/api/services/district/DistrictItem;
.super Ljava/lang/Object;
.source "DistrictItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amap/api/services/core/LatLonPoint;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/amap/api/services/district/a;

    invoke-direct {v0}, Lcom/amap/api/services/district/a;-><init>()V

    sput-object v0, Lcom/amap/api/services/district/DistrictItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    .line 192
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/amap/api/services/district/DistrictItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 47
    iput-object p5, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 233
    if-ne p0, p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 236
    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 238
    goto :goto_0

    .line 239
    :cond_3
    check-cast p1, Lcom/amap/api/services/district/DistrictItem;

    .line 240
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 241
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 242
    goto :goto_0

    .line 243
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 244
    goto :goto_0

    .line 245
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_6

    .line 246
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_7

    move v0, v1

    .line 247
    goto :goto_0

    .line 248
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 249
    goto :goto_0

    .line 250
    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 251
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 252
    goto :goto_0

    .line 253
    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 254
    goto :goto_0

    .line 255
    :cond_9
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    if-nez v2, :cond_a

    .line 256
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    if-eqz v2, :cond_b

    move v0, v1

    .line 257
    goto :goto_0

    .line 258
    :cond_a
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 259
    goto :goto_0

    .line 260
    :cond_b
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 261
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    .line 262
    goto :goto_0

    .line 263
    :cond_c
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 264
    goto :goto_0

    .line 265
    :cond_d
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 266
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 267
    goto/16 :goto_0

    .line 268
    :cond_e
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 269
    goto/16 :goto_0
.end method

.method public getAdcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getCitycode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDistrict()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 218
    .line 220
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 221
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 222
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 224
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 226
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 227
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 228
    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    goto :goto_1

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 227
    :cond_5
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public setAdcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCenter(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 131
    return-void
.end method

.method public setCitycode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setSubDistrict(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistrictItem [mCitycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDistricts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 186
    return-void
.end method
