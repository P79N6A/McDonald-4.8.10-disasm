.class public Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "AdvertisablePromotionEntity.java"


# static fields
.field public static final COLUMN_BASE_PRODUCT_ID:Ljava/lang/String; = "base_product_id"

.field public static final COLUMN_STORE_ID:Ljava/lang/String; = "store_id"

.field public static final COLUMN_SWAP_PRODUCT_ID:Ljava/lang/String; = "swap_product_id"

.field public static final COLUMN_WEEKDAY:Ljava/lang/String; = "weekday"

.field public static final TABLE_NAME:Ljava/lang/String; = "advertisable_promotion"


# instance fields
.field private mBaseProductId:I

.field private mStoreId:I

.field private mSwapProductId:I

.field private mWeekday:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseProductId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mBaseProductId:I

    return v0
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
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "store_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "base_product_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "swap_product_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "weekday"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignKeys()Ljava/util/List;
    .locals 6
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
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v3, "store_id"

    const-string v4, "store_catalogs"

    const-string v5, "store_id"

    invoke-direct {v2, v3, v4, v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v3, "base_product_id"

    const-string v4, "products"

    const-string v5, "external_id"

    invoke-direct {v2, v3, v4, v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v3, "swap_product_id"

    const-string v4, "products"

    const-string v5, "external_id"

    invoke-direct {v2, v3, v4, v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "store_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "base_product_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "weekday"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    const-string v0, "%s=? and %s=? and %s=?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "store_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "base_product_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "weekday"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mStoreId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mBaseProductId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mWeekday:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getStoreId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mStoreId:I

    return v0
.end method

.method public getSwapProductId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mSwapProductId:I

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "advertisable_promotion"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "store_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mStoreId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v1, "base_product_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mBaseProductId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v1, "swap_product_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mSwapProductId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v1, "weekday"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mWeekday:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    return-object v0
.end method

.method public getWeekday()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mWeekday:I

    return v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 84
    const-string v0, "store_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mStoreId:I

    .line 85
    const-string v0, "base_product_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mBaseProductId:I

    .line 86
    const-string v0, "swap_product_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mSwapProductId:I

    .line 87
    const-string v0, "weekday"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mWeekday:I

    .line 88
    return-void
.end method

.method public setBaseProductId(I)V
    .locals 0
    .param p1, "baseProductId"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mBaseProductId:I

    .line 104
    return-void
.end method

.method public setStoreId(I)V
    .locals 0
    .param p1, "storeId"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mStoreId:I

    .line 96
    return-void
.end method

.method public setSwapProductId(I)V
    .locals 0
    .param p1, "swapProductId"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mSwapProductId:I

    .line 112
    return-void
.end method

.method public setWeekday(I)V
    .locals 0
    .param p1, "weekday"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;->mWeekday:I

    .line 120
    return-void
.end method
