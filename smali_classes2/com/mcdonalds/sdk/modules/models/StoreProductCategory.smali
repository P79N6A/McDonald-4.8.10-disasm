.class public Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "StoreProductCategory.java"


# static fields
.field public static final COLUMN_CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final COLUMN_DISPLAY_ORDER:Ljava/lang/String; = "display_order"

.field public static final COLUMN_DISPLAY_SIZE_SELECTION:Ljava/lang/String; = "display_size_selection"

.field public static final COLUMN_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field public static final COLUMN_STORE_ID:Ljava/lang/String; = "store_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "store_product_category"


# instance fields
.field private mCategoryId:I

.field private mDisplayOrder:I

.field private mDisplaySizeSelection:I

.field private mProductId:I

.field private mStoreId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mCategoryId:I

    return v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mDisplayOrder:I

    return v0
.end method

.method public getDisplaySizeSelection()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mDisplaySizeSelection:I

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
    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "product_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "store_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "category_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_order"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_size_selection"

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
    .line 65
    const/4 v0, 0x0

    return-object v0
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
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 52
    new-array v0, v4, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "product_id"

    aput-object v3, v2, v6

    const-string v3, "store_id"

    aput-object v3, v2, v7

    const-string v3, "store_product"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v4, v6

    const-string v5, "store_id"

    aput-object v5, v4, v7

    invoke-direct {v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v2, "category_id"

    const-string v3, "categories"

    const-string v4, "category_id"

    invoke-direct {v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "product_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "store_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mProductId:I

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    const-string v0, "%s=? and %s=? and %s=?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "product_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "store_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "category_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mProductId:I

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mStoreId:I

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mCategoryId:I

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 81
    return-object v0
.end method

.method public getStoreId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mStoreId:I

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "store_product_category"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "product_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mProductId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v1, "store_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mStoreId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v1, "category_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mCategoryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v1, "display_order"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mDisplayOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    const-string v1, "display_size_selection"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mDisplaySizeSelection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    return-object v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, ""

    .line 95
    .local v0, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string v1, "%s_"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "product_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mProductId:I

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "store_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mStoreId:I

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "category_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mCategoryId:I

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_order"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mDisplayOrder:I

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_size_selection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mDisplaySizeSelection:I

    .line 106
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "categoryId"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mCategoryId:I

    .line 130
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mDisplayOrder:I

    .line 138
    return-void
.end method

.method public setDisplaySizeSelection(I)V
    .locals 0
    .param p1, "displaySizeSelection"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mDisplaySizeSelection:I

    .line 146
    return-void
.end method

.method public setProductId(I)V
    .locals 0
    .param p1, "productId"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mProductId:I

    .line 114
    return-void
.end method

.method public setStoreId(I)V
    .locals 0
    .param p1, "storeId"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->mStoreId:I

    .line 122
    return-void
.end method
