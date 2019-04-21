.class public Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "StoreCatalog.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLUMN_STORE_ID:Ljava/lang/String; = "store_id"

.field public static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreCatalog;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "store_catalogs"


# instance fields
.field private mFacilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;"
        }
    .end annotation
.end field

.field private mFacilitiesVersion:Ljava/lang/String;

.field private mProductPricesVersion:Ljava/lang/String;

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field

.field private mProductsVersion:Ljava/lang/String;

.field private mPromotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field private mPromotionsVersion:Ljava/lang/String;

.field private mStoreId:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 185
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mStoreId:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mVersion:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mPromotionsVersion:Ljava/lang/String;

    .line 191
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Promotion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mPromotions:Ljava/util/List;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mFacilitiesVersion:Ljava/lang/String;

    .line 193
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Facility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mFacilities:Ljava/util/List;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProductsVersion:Ljava/lang/String;

    .line 195
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Product;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProducts:Ljava/util/List;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProductPricesVersion:Ljava/lang/String;

    .line 197
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getFacilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mFacilities:Ljava/util/List;

    return-object v0
.end method

.method public getFacilitiesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mFacilitiesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "store_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "version"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 67
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 61
    :sswitch_0
    const-string v1, "promotions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "facilities"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mPromotions:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getRelationValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mFacilities:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getRelationValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x1ffd2281 -> :sswitch_1
        0x3b429830 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getForeignKeys()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 53
    new-array v6, v4, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const/4 v7, 0x0

    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v1, "store_id"

    const-string v2, "promotions"

    const-string v3, "id"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v1, "store_id"

    const-string v2, "facilities"

    const-string v3, "id"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "store_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getProductPricesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProductPricesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProducts:Ljava/util/List;

    return-object v0
.end method

.method public getProductsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProductsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mPromotions:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mPromotionsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "store_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mStoreId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getStoreId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mStoreId:I

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "store_catalogs"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "store_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mStoreId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v1, "version"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 90
    const-string v0, "store_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mStoreId:I

    .line 91
    const-string v0, "version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mVersion:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setFacilities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "facilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mFacilities:Ljava/util/List;

    .line 124
    return-void
.end method

.method public setFacilitiesVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "facilitiesVersion"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mFacilitiesVersion:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setProductPricesVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "productPricesVersion"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProductPricesVersion:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProducts:Ljava/util/List;

    .line 132
    return-void
.end method

.method public setProductsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "productsVersion"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProductsVersion:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setPromotions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Promotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Promotion;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mPromotions:Ljava/util/List;

    .line 116
    return-void
.end method

.method public setPromotionsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "promotionsVersion"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mPromotionsVersion:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setStoreId(I)V
    .locals 0
    .param p1, "storeId"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mStoreId:I

    .line 100
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mVersion:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mStoreId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mPromotionsVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mPromotions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 177
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mFacilitiesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mFacilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProductsVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProducts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 181
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->mProductPricesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return-void
.end method
