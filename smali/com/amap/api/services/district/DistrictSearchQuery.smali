.class public Lcom/amap/api/services/district/DistrictSearchQuery;
.super Ljava/lang/Object;
.source "DistrictSearchQuery.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/district/DistrictSearchQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYWORDS_BUSINESS:Ljava/lang/String; = "biz_area"

.field public static final KEYWORDS_CITY:Ljava/lang/String; = "city"

.field public static final KEYWORDS_COUNTRY:Ljava/lang/String; = "country"

.field public static final KEYWORDS_DISTRICT:Ljava/lang/String; = "district"

.field public static final KEYWORDS_PROVINCE:Ljava/lang/String; = "province"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/amap/api/services/district/d;

    invoke-direct {v0}, Lcom/amap/api/services/district/d;-><init>()V

    sput-object v0, Lcom/amap/api/services/district/DistrictSearchQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 42
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    iput-boolean p4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 65
    iput p5, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 66
    return-void
.end method


# virtual methods
.method public checkKeyWords()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLevels()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "province"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "city"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "district"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "biz_area"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clone()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 6

    .prologue
    .line 257
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    new-instance v0, Lcom/amap/api/services/district/DistrictSearchQuery;

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    iget v3, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    iget-boolean v4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    iget v5, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string v1, "DistrictSearchQuery"

    const-string v2, "clone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    if-ne p0, p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 209
    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 211
    goto :goto_0

    .line 212
    :cond_3
    check-cast p1, Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 213
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 214
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 215
    goto :goto_0

    .line 216
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 217
    goto :goto_0

    .line 218
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 219
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 220
    goto :goto_0

    .line 221
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 222
    goto :goto_0

    .line 223
    :cond_7
    iget v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    iget v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 224
    goto :goto_0

    .line 225
    :cond_8
    iget v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    iget v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 226
    goto :goto_0

    .line 227
    :cond_9
    iget-boolean v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    iget-boolean v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 228
    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywordsLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 192
    .line 194
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 196
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 198
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    add-int/2addr v0, v1

    .line 199
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    add-int/2addr v0, v1

    .line 200
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_2
    add-int/2addr v0, v1

    .line 201
    return v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 200
    :cond_2
    const/16 v0, 0x4d5

    goto :goto_2
.end method

.method public isShowChild()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    return v0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setKeywordsLevel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 85
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 104
    return-void
.end method

.method public setShowChild(Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 161
    return-void
.end method

.method protected weakEquals(Lcom/amap/api/services/district/DistrictSearchQuery;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 233
    if-ne p0, p1, :cond_1

    .line 251
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
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 238
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 239
    goto :goto_0

    .line 240
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 241
    goto :goto_0

    .line 242
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 243
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 244
    goto :goto_0

    .line 245
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 246
    goto :goto_0

    .line 247
    :cond_6
    iget v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    iget v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 248
    goto :goto_0

    .line 249
    :cond_7
    iget-boolean v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    iget-boolean v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 250
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 278
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
