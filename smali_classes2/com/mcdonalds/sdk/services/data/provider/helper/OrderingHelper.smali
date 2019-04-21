.class public Lcom/mcdonalds/sdk/services/data/provider/helper/OrderingHelper;
.super Ljava/lang/Object;
.source "OrderingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDimensions(Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p0, "helper"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 195
    const-string v7, "%s_%s"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "store_product"

    aput-object v9, v8, v10

    const-string v9, "dimensions"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "relationName":Ljava/lang/String;
    const-string v7, "%s_%s"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "dimensions"

    aput-object v9, v8, v10

    const-string v9, "product_id"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "relationDimensionId":Ljava/lang/String;
    const-string v7, "%s_%s"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "store_product"

    aput-object v9, v8, v10

    const-string v9, "id"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "relationProductId":Ljava/lang/String;
    const-string v7, "%s_%s"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "store_product"

    aput-object v9, v8, v10

    const-string v9, "store_id"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "relationStoreId":Ljava/lang/String;
    const-string v7, "p_%s"

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "advertisable_base_product_id"

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "advertisableBaseProductIdAlias":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->select()Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;-><init>()V

    const-string v9, "d"

    .line 203
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    const-string v9, "p"

    .line 204
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    const-string v9, "pb"

    .line 205
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    const-string v9, "sp"

    .line 206
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    const-string v9, "spb"

    .line 207
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    const-string v9, "advertisable_promotion"

    const-string v10, "base_product_id"

    const-string v11, "ap"

    invoke-direct {v8, v9, v10, v0, v11}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "0"

    .line 209
    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->setNullFallBackValue(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    move-result-object v8

    .line 208
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addColumn(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "dimensions"

    const-string v9, "d"

    .line 210
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "spd"

    .line 211
    invoke-virtual {v7, v3, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "spd"

    const-string v9, "d"

    const-string v10, "product_id"

    .line 212
    invoke-virtual {v7, v8, v2, v9, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "store_product"

    const-string v9, "sp"

    .line 213
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "d"

    const-string v9, "product_id"

    const-string v10, "sp"

    const-string v11, "id"

    .line 214
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "spd"

    const-string v9, "sp"

    const-string v10, "store_id"

    .line 215
    invoke-virtual {v7, v8, v5, v9, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "products"

    const-string v9, "p"

    .line 216
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "p"

    const-string v9, "external_id"

    const-string v10, "d"

    const-string v11, "product_id"

    .line 217
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "advertisable_promotion"

    const-string v9, "ap"

    .line 218
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "ap"

    const-string v9, "base_product_id"

    const-string v10, "p"

    const-string v11, "external_id"

    .line 219
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "ap"

    const-string v9, "weekday"

    .line 220
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "products"

    const-string v9, "pb"

    .line 221
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "pb"

    const-string v9, "external_id"

    const-string v10, "ap"

    const-string v11, "swap_product_id"

    .line 222
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "store_product"

    const-string v9, "spb"

    .line 223
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "pb"

    const-string v9, "external_id"

    const-string v10, "spb"

    const-string v11, "id"

    .line 224
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "spd"

    const-string v9, "spb"

    const-string v10, "store_id"

    .line 225
    invoke-virtual {v7, v8, v5, v9, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "sp"

    const-string v9, "store_id"

    .line 226
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->whereEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "spd"

    .line 227
    invoke-virtual {v7, v8, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->whereEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    const-string v9, "ap"

    const-string v10, "base_product_id"

    invoke-direct {v8, v9, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    const-string v10, "p"

    const-string v11, "external_id"

    invoke-direct {v9, v10, v11}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->setNullFallBackColumn(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    move-result-object v8

    .line 228
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->groupBy(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v7

    const-string v8, "d"

    const-string v9, "size_code"

    .line 230
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->orderByAsc(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v1

    .line 232
    .local v1, "builder":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->getSQL()Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    instance-of v8, v7, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_0

    invoke-virtual {v7, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    check-cast v7, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v6, p1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0
.end method

.method public static getIngredients(Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p0, "helper"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;
    .param p1, "relationName"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 152
    const-string v6, "%s_%s"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "ingredients"

    aput-object v8, v7, v9

    const-string v8, "id"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "relationIngredientId":Ljava/lang/String;
    const-string v6, "%s_%s"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "store_product"

    aput-object v8, v7, v9

    const-string v8, "id"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "relationProductId":Ljava/lang/String;
    const-string v6, "%s_%s"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "store_product"

    aput-object v8, v7, v9

    const-string v8, "store_id"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "relationStoreId":Ljava/lang/String;
    const-string v6, "p_%s"

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "advertisable_base_product_id"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "advertisableBaseProductIdAlias":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->select()Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/Ingredient;-><init>()V

    const-string v8, "i"

    .line 159
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    const-string v8, "p"

    .line 160
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    const-string v8, "pb"

    .line 161
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    const-string v8, "sp"

    .line 162
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    const-string v8, "spb"

    .line 163
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    const-string v8, "advertisable_promotion"

    const-string v9, "base_product_id"

    const-string v10, "ap"

    invoke-direct {v7, v8, v9, v0, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "0"

    .line 165
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->setNullFallBackValue(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    move-result-object v7

    .line 164
    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addColumn(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "ingredients"

    const-string v8, "i"

    .line 166
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "spi"

    .line 167
    invoke-virtual {v6, p1, v7}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "spi"

    const-string v8, "i"

    const-string v9, "id"

    .line 168
    invoke-virtual {v6, v7, v2, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "store_product"

    const-string v8, "sp"

    .line 169
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "i"

    const-string v8, "product_id"

    const-string v9, "sp"

    const-string v10, "id"

    .line 170
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "spi"

    const-string v8, "sp"

    const-string v9, "store_id"

    .line 171
    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "products"

    const-string v8, "p"

    .line 172
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "p"

    const-string v8, "external_id"

    const-string v9, "i"

    const-string v10, "product_id"

    .line 173
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "advertisable_promotion"

    const-string v8, "ap"

    .line 174
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "ap"

    const-string v8, "base_product_id"

    const-string v9, "p"

    const-string v10, "external_id"

    .line 175
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "ap"

    const-string v8, "weekday"

    .line 176
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "products"

    const-string v8, "pb"

    .line 177
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "pb"

    const-string v8, "external_id"

    const-string v9, "ap"

    const-string v10, "swap_product_id"

    .line 178
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "store_product"

    const-string v8, "spb"

    .line 179
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "pb"

    const-string v8, "external_id"

    const-string v9, "spb"

    const-string v10, "id"

    .line 180
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "spi"

    const-string v8, "spb"

    const-string v9, "store_id"

    .line 181
    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "spi"

    .line 182
    invoke-virtual {v6, v7, v3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->whereEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "sp"

    const-string v8, "store_id"

    .line 183
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->whereEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    const-string v8, "ap"

    const-string v9, "base_product_id"

    invoke-direct {v7, v8, v9}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    const-string v9, "p"

    const-string v10, "external_id"

    invoke-direct {v8, v9, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->setNullFallBackColumn(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    move-result-object v7

    .line 184
    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->groupBy(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v6

    const-string v7, "i"

    const-string v8, "display_order"

    .line 186
    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->orderByAsc(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v1

    .line 188
    .local v1, "builder":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->getSQL()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    instance-of v7, v6, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_0

    invoke-virtual {v6, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v6, v5, p2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0
.end method

.method public static getRecipeMap(Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .param p0, "helper"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 22
    const-string v12, "p_%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "advertisable_base_product_id"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "advertisableBaseProductIdAlias":Ljava/lang/String;
    const-string v12, "%s_%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "store_product"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "pods"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 25
    .local v11, "storeProductPODTableName":Ljava/lang/String;
    const-string v12, "%s_%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "store_product"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "id"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 26
    .local v8, "storeProductPODProductId":Ljava/lang/String;
    const-string v12, "%s_%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "store_product"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "store_id"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 27
    .local v10, "storeProductPODStoreId":Ljava/lang/String;
    const-string v12, "%s_%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "pods"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "sale_type_id"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 28
    .local v9, "storeProductPODSaleTypeId":Ljava/lang/String;
    const-string v12, "%s_%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "store_product"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "menu_types"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 29
    .local v7, "storeProductMenuTypeTableName":Ljava/lang/String;
    const-string v12, "%s_%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "store_product"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "id"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, "storeProductMenuTypeProductId":Ljava/lang/String;
    const-string v12, "%s_%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "store_product"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "store_id"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "storeProductMenuTypeStoreId":Ljava/lang/String;
    const-string v12, "%s_%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "menu_types"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "id"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "storeProductMenuTypeId":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->select()Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v2

    .line 37
    .local v2, "builder":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    new-instance v12, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {v12}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    const-string v13, "p"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    new-instance v13, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {v13}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    const-string v14, "pb"

    .line 38
    invoke-virtual {v12, v13, v14}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    new-instance v13, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v13}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    const-string v14, "sp"

    .line 39
    invoke-virtual {v12, v13, v14}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    new-instance v13, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v13}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    const-string v14, "spb"

    .line 40
    invoke-virtual {v12, v13, v14}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    new-instance v13, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-direct {v13}, Lcom/mcdonalds/sdk/modules/models/Category;-><init>()V

    const-string v14, "c"

    .line 41
    invoke-virtual {v12, v13, v14}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    new-instance v13, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;

    invoke-direct {v13}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;-><init>()V

    const-string v14, "spc"

    .line 42
    invoke-virtual {v12, v13, v14}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 45
    new-instance v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    const-string v13, "advertisable_promotion"

    const-string v14, "base_product_id"

    const-string v15, "ap"

    invoke-direct {v12, v13, v14, v1, v15}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "0"

    .line 46
    invoke-virtual {v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->setNullFallBackValue(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    move-result-object v12

    .line 45
    invoke-virtual {v2, v12}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->addColumn(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 49
    const-string v12, "products"

    const-string v13, "p"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 52
    const-string v12, "store_product"

    const-string v13, "sp"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "p"

    const-string v14, "external_id"

    const-string v15, "sp"

    const-string v16, "id"

    .line 53
    invoke-virtual/range {v12 .. v16}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 58
    const-string v12, "advertisable_promotion"

    const-string v13, "ap"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "p"

    const-string v14, "external_id"

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    const/16 v16, 0x0

    new-instance v17, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    const-string v18, "ap"

    const-string v19, "swap_product_id"

    invoke-direct/range {v17 .. v19}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    const-string v18, "ap"

    const-string v19, "base_product_id"

    invoke-direct/range {v17 .. v19}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v17, v15, v16

    .line 59
    invoke-virtual {v12, v13, v14, v15}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onIn(Ljava/lang/String;Ljava/lang/String;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "sp"

    const-string v14, "store_id"

    const-string v15, "ap"

    const-string v16, "store_id"

    .line 62
    invoke-virtual/range {v12 .. v16}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 68
    const-string v12, "ap"

    const-string v13, "weekday"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 72
    const-string v12, "products"

    const-string v13, "pb"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "pb"

    const-string v14, "external_id"

    const-string v15, "ap"

    const-string v16, "swap_product_id"

    .line 73
    invoke-virtual/range {v12 .. v16}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 76
    const-string v12, "store_product"

    const-string v13, "spb"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "spb"

    const-string v14, "id"

    const-string v15, "pb"

    const-string v16, "external_id"

    .line 77
    invoke-virtual/range {v12 .. v16}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "spb"

    const-string v14, "store_id"

    const-string v15, "sp"

    const-string v16, "store_id"

    .line 78
    invoke-virtual/range {v12 .. v16}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 85
    const-string v12, "sppod"

    invoke-virtual {v2, v11, v12}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "sp"

    const-string v14, "id"

    const-string v15, "sppod"

    .line 86
    invoke-virtual {v12, v13, v14, v15, v8}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "sp"

    const-string v14, "store_id"

    const-string v15, "sppod"

    .line 87
    invoke-virtual {v12, v13, v14, v15, v10}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "pods"

    const-string v14, "pod"

    .line 88
    invoke-virtual {v12, v13, v14}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "sppod"

    const-string v14, "pod"

    const-string v15, "sale_type_id"

    .line 89
    invoke-virtual {v12, v13, v9, v14, v15}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 94
    const-string v12, "m"

    invoke-virtual {v2, v7, v12}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "sp"

    const-string v14, "id"

    const-string v15, "m"

    .line 95
    invoke-virtual {v12, v13, v14, v15, v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "sp"

    const-string v14, "store_id"

    const-string v15, "m"

    .line 96
    invoke-virtual {v12, v13, v14, v15, v6}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 102
    const-string v12, "categories"

    const-string v13, "c"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "store_product_category"

    const-string v14, "spc"

    .line 103
    invoke-virtual {v12, v13, v14}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "spc"

    const-string v14, "category_id"

    const-string v15, "c"

    const-string v16, "category_id"

    .line 104
    invoke-virtual/range {v12 .. v16}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "spc"

    const-string v14, "product_id"

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    const/16 v16, 0x0

    new-instance v17, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    const-string v18, "sp"

    const-string v19, "id"

    invoke-direct/range {v17 .. v19}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    const-string v18, "ap"

    const-string v19, "base_product_id"

    invoke-direct/range {v17 .. v19}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v17, v15, v16

    .line 105
    invoke-virtual {v12, v13, v14, v15}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onIn(Ljava/lang/String;Ljava/lang/String;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v12

    const-string v13, "spc"

    const-string v14, "store_id"

    const-string v15, "sp"

    const-string v16, "store_id"

    .line 108
    invoke-virtual/range {v12 .. v16}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 112
    const-string v12, "pod"

    const-string v13, "type_name"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->whereEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 115
    const-string v12, "m"

    invoke-virtual {v2, v12, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->whereEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 118
    const-string v12, "c"

    const-string v13, "type"

    const-string v14, "m"

    invoke-virtual {v2, v12, v13, v14, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->whereEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 122
    const-string v12, "sp"

    const-string v13, "store_id"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->whereEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 126
    const-string v12, "p"

    const-string v13, "name"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->whereLikeArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 132
    new-instance v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    const-string v13, "ap"

    const-string v14, "base_product_id"

    invoke-direct {v12, v13, v14}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    const-string v14, "p"

    const-string v15, "external_id"

    invoke-direct {v13, v14, v15}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->setNullFallBackColumn(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    move-result-object v12

    .line 132
    invoke-virtual {v2, v12}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->groupBy(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 136
    const-string v12, "c"

    const-string v13, "category_id"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->groupBy(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 139
    const-string v12, "c"

    const-string v13, "category_id"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->orderBy(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 143
    const-string v12, "spc"

    const-string v13, "display_order"

    invoke-virtual {v2, v12, v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->orderBy(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 145
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->getSQL()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    instance-of v13, v12, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v13, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v12, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    :goto_0
    return-object v12

    :cond_0
    check-cast v12, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p1

    invoke-static {v12, v3, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_0
.end method
