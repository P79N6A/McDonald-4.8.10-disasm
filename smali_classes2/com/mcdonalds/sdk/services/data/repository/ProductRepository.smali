.class public Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;
.super Lcom/mcdonalds/sdk/services/data/repository/DatabaseModelRepository;
.source "ProductRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/repository/DatabaseModelRepository;-><init>()V

    return-void
.end method

.method public static cleanOrphanedProducts(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 495
    const-string v1, "%1$s.%2$s not in (select %3$s from %4$s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "products"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "external_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "store_product"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method public static cleanStoreProducts(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreProducts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "%s=?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "store_id"

    aput-object v4, v3, v5

    .line 483
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    .line 484
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 482
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreProductCategories;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "%s=?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "store_id"

    aput-object v4, v3, v5

    .line 488
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    .line 489
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 487
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method public static getAll(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 103
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 104
    .local v8, "productList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    if-eqz v6, :cond_1

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "productList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .restart local v8    # "productList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v7, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 110
    .local v7, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/modules/models/Product;->populateFromCursor(Landroid/database/Cursor;)V

    .line 111
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 115
    .end local v7    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_1
    return-object v8
.end method

.method public static getByCategory(Landroid/content/Context;I)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "store_product"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-string v5, "categories"

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, "storeProductCategoryTableName":Ljava/lang/String;
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "store_product"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-string v5, "id"

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "columnStoreProductId":Ljava/lang/String;
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "categories"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-string v5, "category_id"

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "columnCategoryId":Ljava/lang/String;
    const-string v0, "select %s from %s where %s = ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v12, v1, v2

    const/4 v2, 0x2

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "categorySubQuery":Ljava/lang/String;
    const-string v0, "select %s from %s where %s in (%s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "id"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-string v5, "store_product"

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string v5, "id"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "storeProductSubQuery":Ljava/lang/String;
    const-string v0, "%s in (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "external_id"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    aput-object v13, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 159
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 165
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 166
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v11, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v10, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v10}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 170
    .local v10, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v10, v9}, Lcom/mcdonalds/sdk/modules/models/Product;->populateFromCursor(Landroid/database/Cursor;)V

    .line 171
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 174
    .end local v10    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 179
    .end local v11    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :goto_1
    return-object v11

    :cond_1
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private static getByProductCode(Landroid/content/Context;ILandroid/util/SparseArray;ZLjava/util/Date;)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productCode"    # I
    .param p3, "resolveProductDetails"    # Z
    .param p4, "orderDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;Z",
            "Ljava/util/Date;",
            ")",
            "Lcom/mcdonalds/sdk/modules/models/Product;"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "products":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 195
    .local v8, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    if-eqz v8, :cond_0

    move-object/from16 v18, v8

    .line 242
    .end local v8    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    .local v18, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :goto_0
    return-object v18

    .line 199
    .end local v18    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    .restart local v8    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_0
    const/16 v20, 0x0

    .line 200
    .local v20, "storeId":I
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v19

    .line 201
    .local v19, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v19, :cond_3

    .line 202
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v20

    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 204
    .local v17, "calendar":Ljava/util/Calendar;
    if-eqz p4, :cond_1

    .line 205
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 207
    :cond_1
    const/4 v2, 0x7

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 209
    .local v22, "weekday":I
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 210
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    .line 211
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    .line 212
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 215
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;->WOTD_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "%s=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v12, "external_id"

    aput-object v12, v7, v10

    .line 216
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 215
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 219
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 220
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 222
    new-instance v21, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 223
    .local v21, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    const-string v2, "sp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 224
    new-instance v8, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    .end local v8    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-direct {v8}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 225
    .restart local v8    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setStoreProduct(Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V

    .line 226
    const-string v10, "p"

    move-object/from16 v7, p0

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->populateProductWithCursor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/database/Cursor;Ljava/lang/String;Landroid/util/SparseArray;Z)V

    .line 229
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableBaseProductId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    new-instance v16, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 231
    .local v16, "advertisableStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    const-string v2, "spb"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 232
    new-instance v11, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v11}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 233
    .local v11, "advertisableProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setStoreProduct(Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V

    .line 234
    const-string v13, "pb"

    move-object/from16 v10, p0

    move-object v12, v9

    move-object/from16 v14, p2

    move/from16 v15, p3

    invoke-static/range {v10 .. v15}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->populateProductWithCursor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/database/Cursor;Ljava/lang/String;Landroid/util/SparseArray;Z)V

    .line 235
    invoke-virtual {v8, v11}, Lcom/mcdonalds/sdk/modules/models/Product;->setAdvertisableProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 236
    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setAdvertisableWeekDay(I)V

    .line 239
    .end local v11    # "advertisableProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v16    # "advertisableStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    .end local v21    # "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v17    # "calendar":Ljava/util/Calendar;
    .end local v22    # "weekday":I
    :cond_3
    move-object/from16 v18, v8

    .line 242
    .end local v8    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    .restart local v18    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    goto/16 :goto_0
.end method

.method public static getByProductCode(Landroid/content/Context;IZ)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productCode"    # I
    .param p2, "resolveRecipeDetails"    # Z

    .prologue
    .line 183
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 184
    .local v0, "recipes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByProductCode(Landroid/content/Context;ILandroid/util/SparseArray;ZLjava/util/Date;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    return-object v1
.end method

.method public static getByProductCode(Landroid/content/Context;IZLjava/util/Date;)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productCode"    # I
    .param p2, "resolveRecipeDetails"    # Z
    .param p3, "orderDate"    # Ljava/util/Date;

    .prologue
    .line 188
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 189
    .local v0, "recipes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-static {p0, p1, v0, p2, p3}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByProductCode(Landroid/content/Context;ILandroid/util/SparseArray;ZLjava/util/Date;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    return-object v1
.end method

.method public static getByProductCodes(Landroid/content/Context;[I)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productCodes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 247
    const/4 v10, 0x0

    .line 248
    .local v10, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    if-eqz p1, :cond_3

    .line 250
    const-string v0, "%s in ("

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "external_id"

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 251
    .local v11, "selection":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .local v12, "selectionBuilder":Ljava/lang/StringBuilder;
    array-length v0, p1

    new-array v4, v0, [Ljava/lang/String;

    .line 254
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_1

    .line 255
    if-lez v7, :cond_0

    .line 256
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    aget v9, p1, v7

    .line 259
    .local v9, "productCode":I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 260
    const-string v0, "?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 262
    .end local v9    # "productCode":I
    :cond_1
    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;->CONTENT_URI:Landroid/net/Uri;

    .line 265
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    .line 264
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 267
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 270
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .restart local v10    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    new-instance v8, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 273
    .local v8, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v8, v6}, Lcom/mcdonalds/sdk/modules/models/Product;->populateFromCursor(Landroid/database/Cursor;)V

    .line 274
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 278
    .end local v8    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "i":I
    .end local v11    # "selection":Ljava/lang/String;
    .end local v12    # "selectionBuilder":Ljava/lang/StringBuilder;
    :cond_3
    return-object v10
.end method

.method public static getByRecipeId(Landroid/content/Context;I)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipeId"    # I

    .prologue
    .line 285
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByRecipeId(Landroid/content/Context;ILandroid/util/SparseArray;Z)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    return-object v0
.end method

.method private static getByRecipeId(Landroid/content/Context;ILandroid/util/SparseArray;Z)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipeId"    # I
    .param p3, "resolveProductDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;Z)",
            "Lcom/mcdonalds/sdk/modules/models/Product;"
        }
    .end annotation

    .prologue
    .local p2, "products":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 290
    const/4 v7, 0x0

    .line 291
    .local v7, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "%s=?"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "recipe_id"

    aput-object v5, v4, v8

    .line 292
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    .line 291
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 295
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 296
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    new-instance v7, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    .end local v7    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-direct {v7}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 299
    .restart local v7    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-static {p0, v7, v6, p2, p3}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->populateProductWithCursor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/database/Cursor;Landroid/util/SparseArray;Z)V

    .line 301
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_1
    return-object v7
.end method

.method public static getProductChoices(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductChoices(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getProductChoices(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Z)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "getChoiceIngredients"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 571
    .local v3, "products":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    sget-object v4, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->CHOICES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v4, v3}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/net/Uri;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v2

    .line 572
    .local v2, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz p2, :cond_0

    if-eqz v2, :cond_0

    .line 573
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 574
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6, v3}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/net/Uri;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    .line 575
    .local v1, "choiceIngredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setIngredients(Ljava/util/List;)V

    goto :goto_0

    .line 578
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v1    # "choiceIngredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_0
    return-object v2
.end method

.method public static getProductDimensions(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;I)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 506
    .local v0, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setProductId(I)V

    .line 507
    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setStoreId(I)V

    .line 508
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductDimensions(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getProductDimensions(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeProduct"    # Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/StoreProduct;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductDimensions(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getProductDimensions(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;Landroid/util/SparseArray;)Ljava/util/List;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeProduct"    # Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/StoreProduct;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    .local p2, "products":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 518
    .local v20, "weekday":I
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 519
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    .line 520
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getStoreId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    .line 521
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getProductId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 524
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->DIMENSIONS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 531
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v19, "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    if-eqz v9, :cond_2

    .line 533
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 534
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 535
    new-instance v17, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    invoke-direct/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;-><init>()V

    .line 536
    .local v17, "dimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    const-string v2, "d"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v2}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 537
    new-instance v8, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 538
    .local v8, "ingredientProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    const-string v10, "p"

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v11, p2

    invoke-static/range {v7 .. v12}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->populateProductWithCursor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/database/Cursor;Ljava/lang/String;Landroid/util/SparseArray;Z)V

    .line 539
    new-instance v18, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 540
    .local v18, "dimensionStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    const-string v2, "sp"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableBaseProductId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    new-instance v16, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 544
    .local v16, "advertisableStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    const-string v2, "spb"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 545
    new-instance v11, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v11}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 546
    .local v11, "advertisableProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setStoreProduct(Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V

    .line 547
    const-string v13, "pb"

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v12, v9

    move-object/from16 v14, p2

    invoke-static/range {v10 .. v15}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->populateProductWithCursor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/database/Cursor;Ljava/lang/String;Landroid/util/SparseArray;Z)V

    .line 548
    invoke-virtual {v8, v11}, Lcom/mcdonalds/sdk/modules/models/Product;->setAdvertisableProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 549
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setAdvertisableWeekDay(I)V

    .line 551
    .end local v11    # "advertisableProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v16    # "advertisableStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 552
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 555
    .end local v8    # "ingredientProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v17    # "dimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    .end local v18    # "dimensionStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 558
    :cond_2
    return-object v19
.end method

.method public static getProductExtras(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->EXTRAS_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/net/Uri;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/net/Uri;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/net/Uri;Landroid/util/SparseArray;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "Landroid/net/Uri;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    .local p3, "products":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/net/Uri;Landroid/util/SparseArray;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/net/Uri;Landroid/util/SparseArray;Z)Ljava/util/List;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "resolveDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "Landroid/net/Uri;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    .local p3, "products":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v20

    .line 589
    .local v20, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v17

    .line 590
    .local v17, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v17, :cond_1

    .line 591
    const/16 v19, 0x0

    .line 639
    :cond_0
    :goto_0
    return-object v19

    .line 593
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 594
    .local v22, "weekday":I
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 595
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    .line 597
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 600
    .local v6, "selectionArgs":[Ljava/lang/String;
    if-nez p2, :cond_2

    .line 601
    sget-object p2, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->INGREDIENTS_CONTENT_URI:Landroid/net/Uri;

    .line 604
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 611
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v19, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v9, :cond_0

    .line 613
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 614
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 615
    new-instance v18, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-direct/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/Ingredient;-><init>()V

    .line 616
    .local v18, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    const-string v2, "i"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 617
    new-instance v8, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 618
    .local v8, "ingredientProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    const-string v10, "p"

    move-object/from16 v7, p0

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v7 .. v12}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->populateProductWithCursor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/database/Cursor;Ljava/lang/String;Landroid/util/SparseArray;Z)V

    .line 619
    new-instance v21, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 620
    .local v21, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    const-string v2, "sp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductPods(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setPODs(Ljava/util/List;)V

    .line 623
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableBaseProductId()I

    move-result v2

    if-eqz v2, :cond_3

    .line 624
    new-instance v16, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 625
    .local v16, "advertisableStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    const-string v2, "spb"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 626
    new-instance v11, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v11}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 627
    .local v11, "advertisableProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setStoreProduct(Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V

    .line 628
    const-string v13, "pb"

    move-object/from16 v10, p0

    move-object v12, v9

    move-object/from16 v14, p3

    move/from16 v15, p4

    invoke-static/range {v10 .. v15}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->populateProductWithCursor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/database/Cursor;Ljava/lang/String;Landroid/util/SparseArray;Z)V

    .line 629
    invoke-virtual {v8, v11}, Lcom/mcdonalds/sdk/modules/models/Product;->setAdvertisableProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 630
    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setAdvertisableWeekDay(I)V

    .line 632
    .end local v11    # "advertisableProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v16    # "advertisableStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 633
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 636
    .end local v8    # "ingredientProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v18    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v21    # "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getProductMap(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Products;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 126
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 127
    .local v8, "productMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    if-eqz v6, :cond_1

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    new-instance v8, Landroid/util/SparseArray;

    .end local v8    # "productMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 131
    .restart local v8    # "productMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v7, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 133
    .local v7, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/modules/models/Product;->populateFromCursor(Landroid/database/Cursor;)V

    .line 134
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 138
    .end local v7    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_1
    return-object v8
.end method

.method public static getProductMap(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pod"    # Ljava/lang/String;
    .param p2, "menuTypeId"    # I
    .param p3, "searchQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v13

    .line 35
    .local v13, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v11

    .line 36
    .local v11, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v11, :cond_1

    .line 37
    const/4 v15, 0x0

    .line 95
    :cond_0
    :goto_0
    return-object v15

    .line 40
    :cond_1
    if-nez p3, :cond_2

    .line 41
    const-string p3, ""

    .line 44
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 46
    .local v18, "weekday":I
    const/4 v1, 0x5

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    aput-object p1, v5, v1

    const/4 v1, 0x2

    .line 49
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    .line 50
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const-string v2, "%%%s%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    .line 51
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 53
    .local v5, "selectionArgs":[Ljava/lang/String;
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    .local v15, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 58
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_0

    .line 59
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 60
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    .line 61
    new-instance v9, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-direct {v9}, Lcom/mcdonalds/sdk/modules/models/Category;-><init>()V

    .line 62
    .local v9, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    const-string v1, "c_category_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setID(I)V

    .line 63
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 64
    .local v10, "categoryProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    if-nez v10, :cond_3

    .line 65
    const-string v1, "c"

    invoke-virtual {v9, v12, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 66
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "categoryProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .restart local v10    # "categoryProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-interface {v15, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_3
    new-instance v17, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 70
    .local v17, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    const-string v1, "sp"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 71
    new-instance v14, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v14}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 72
    .local v14, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    const-string v1, "p"

    invoke-virtual {v14, v12, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setStoreProduct(Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V

    .line 74
    new-instance v16, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;

    invoke-direct/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;-><init>()V

    .line 75
    .local v16, "spc":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    const-string v1, "spc"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v1}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->getDisplaySizeSelection()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setDisplaySizeSelection(I)V

    .line 77
    invoke-virtual {v14, v9}, Lcom/mcdonalds/sdk/modules/models/Product;->setDisplayCategory(Lcom/mcdonalds/sdk/modules/models/Category;)V

    .line 80
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableBaseProductId()I

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    new-instance v8, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 82
    .local v8, "advertisableStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    const-string v1, "spb"

    invoke-virtual {v8, v12, v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 83
    new-instance v7, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;-><init>()V

    .line 84
    .local v7, "advertisableProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/Product;->setStoreProduct(Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V

    .line 85
    const-string v1, "pb"

    invoke-virtual {v7, v12, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v14, v7}, Lcom/mcdonalds/sdk/modules/models/Product;->setAdvertisableProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 87
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setAdvertisableWeekDay(I)V

    .line 89
    .end local v7    # "advertisableProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v8    # "advertisableStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    :cond_4
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 92
    .end local v9    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v10    # "categoryProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    .end local v14    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v16    # "spc":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    .end local v17    # "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getProductMenuTypes(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeProduct"    # Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/StoreProduct;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 380
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v4, v8

    const-string v5, "store_id"

    aput-object v5, v4, v9

    const-string v5, "menu_types"

    const-string v6, "id"

    invoke-direct {v1, v4, v5, v6}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v1, "dimensionForeignKey":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    const-string v4, "store_product"

    const/4 v5, 0x0

    new-array v6, v7, [Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getProductId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 392
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getStoreId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 388
    invoke-static {p0, v4, v5, v6, v1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getRelatedModels(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;)Landroid/database/Cursor;

    move-result-object v0

    .line 396
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 397
    .local v3, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    if-eqz v0, :cond_1

    .line 398
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 400
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    .restart local v3    # "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 402
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/MenuType;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/MenuType;-><init>()V

    .line 403
    .local v2, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/MenuType;->populateFromCursor(Landroid/database/Cursor;)V

    .line 404
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 408
    .end local v2    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_1
    return-object v3
.end method

.method public static getProductPods(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeProduct"    # Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/StoreProduct;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Pod;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 416
    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v4, v8

    const-string v5, "store_id"

    aput-object v5, v4, v9

    const-string v5, "pods"

    const-string v6, "sale_type_id"

    invoke-direct {v2, v4, v5, v6}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .local v2, "podForeignKey":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    const-string v4, "store_product"

    const/4 v5, 0x0

    new-array v6, v7, [Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getProductId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 430
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getStoreId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 424
    invoke-static {p0, v4, v5, v6, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getRelatedModels(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;)Landroid/database/Cursor;

    move-result-object v0

    .line 434
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 435
    .local v3, "pods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Pod;>;"
    if-eqz v0, :cond_1

    .line 436
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 437
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 438
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "pods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Pod;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 439
    .restart local v3    # "pods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Pod;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/Pod;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/Pod;-><init>()V

    .line 441
    .local v1, "pod":Lcom/mcdonalds/sdk/modules/models/Pod;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/Pod;->populateFromCursor(Landroid/database/Cursor;)V

    .line 442
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 446
    .end local v1    # "pod":Lcom/mcdonalds/sdk/modules/models/Pod;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 449
    :cond_1
    return-object v3
.end method

.method public static getStoreProduct(Landroid/content/Context;I)Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productCode"    # I

    .prologue
    .line 337
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getStoreProduct(Landroid/content/Context;ILandroid/util/SparseArray;Z)Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    return-object v0
.end method

.method private static getStoreProduct(Landroid/content/Context;ILandroid/util/SparseArray;Z)Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productCode"    # I
    .param p3, "resolveDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;Z)",
            "Lcom/mcdonalds/sdk/modules/models/StoreProduct;"
        }
    .end annotation

    .prologue
    .local p2, "products":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v2, 0x0

    .line 342
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v8

    .line 343
    .local v8, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    .line 345
    .local v6, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v6, :cond_0

    .line 375
    :goto_0
    return-object v2

    .line 349
    :cond_0
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v9

    .line 351
    .local v9, "storeId":I
    const/4 v10, 0x0

    .line 352
    .local v10, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreProducts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 354
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getSelection()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 355
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    move-object v5, v2

    .line 352
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 359
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 360
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 361
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 362
    new-instance v10, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    .end local v10    # "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-direct {v10}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 363
    .restart local v10    # "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-virtual {v10, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->populateFromCursor(Landroid/database/Cursor;)V

    .line 365
    invoke-static {p0, v10}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductPods(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setPODs(Ljava/util/List;)V

    .line 366
    invoke-static {p0, v10}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductMenuTypes(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setMenuTypes(Ljava/util/List;)V

    .line 368
    if-eqz p3, :cond_1

    .line 369
    invoke-static {p0, v10, p2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductDimensions(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setDimensions(Ljava/util/List;)V

    .line 372
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v10

    .line 375
    goto :goto_0
.end method

.method private static populateProductWithCursor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/database/Cursor;Landroid/util/SparseArray;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p4, "resolveProductDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "Landroid/database/Cursor;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p3, "products":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->populateProductWithCursor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/database/Cursor;Ljava/lang/String;Landroid/util/SparseArray;Z)V

    .line 309
    return-void
.end method

.method private static populateProductWithCursor(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/database/Cursor;Ljava/lang/String;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p5, "resolveProductDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "products":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v2, 0x1

    .line 312
    invoke-virtual {p1, p2, p3}, Lcom/mcdonalds/sdk/modules/models/Product;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    if-nez p5, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p4, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/net/Uri;Landroid/util/SparseArray;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setIngredients(Ljava/util/List;)V

    .line 318
    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->EXTRAS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1, p4, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/net/Uri;Landroid/util/SparseArray;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setExtras(Ljava/util/List;)V

    .line 319
    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Ordering;->CHOICES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1, p4, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;Landroid/net/Uri;Landroid/util/SparseArray;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setChoices(Ljava/util/List;)V

    .line 320
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1, p4, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getStoreProduct(Landroid/content/Context;ILandroid/util/SparseArray;Z)Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    .line 321
    .local v0, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getMenuTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setMenuTypes(Ljava/util/List;)V

    .line 323
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPriceEatIn()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product;->setPriceEatIn(D)V

    .line 324
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPriceTakeOut()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product;->setPriceTakeOut(D)V

    .line 325
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPriceDelivery()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product;->setPriceDelivery(D)V

    .line 326
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBasePriceEatIn()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product;->setBasePriceEatIn(D)V

    .line 327
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBasePriceTakeOut()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product;->setBasePriceTakeOut(D)V

    .line 328
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBasePriceDelivery()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product;->setBasePriceDelivery(D)V

    .line 329
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getEnergy()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product;->setEnergy(D)V

    .line 330
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getKCal()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product;->setKCal(D)V

    .line 331
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPODs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setPODObjects(Ljava/util/List;)V

    .line 332
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setDimensions(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static populateProductWithStoreSpecificData(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    .line 454
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getStoreProduct(Landroid/content/Context;ILandroid/util/SparseArray;Z)Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    .line 455
    .local v0, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-static {p1, v0}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->populateProductWithStoreSpecificData(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V

    .line 457
    return-void
.end method

.method private static populateProductWithStoreSpecificData(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V
    .locals 2
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p1, "storeProduct"    # Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    .prologue
    .line 460
    if-eqz p1, :cond_0

    .line 461
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getMenuTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setMenuTypes(Ljava/util/List;)V

    .line 462
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPODs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setPODObjects(Ljava/util/List;)V

    .line 463
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPriceEatIn()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setPriceEatIn(D)V

    .line 464
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPriceTakeOut()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setPriceTakeOut(D)V

    .line 465
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPriceDelivery()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setPriceDelivery(D)V

    .line 466
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBasePriceEatIn()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setBasePriceEatIn(D)V

    .line 467
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBasePriceTakeOut()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setBasePriceTakeOut(D)V

    .line 468
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBasePriceDelivery()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setBasePriceDelivery(D)V

    .line 469
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getEnergy()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setEnergy(D)V

    .line 470
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getKCal()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setKCal(D)V

    .line 472
    :cond_0
    return-void
.end method

.method public static productIsInCurrentStore(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "externalId"    # I

    .prologue
    const/4 v1, 0x0

    .line 476
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getStoreProduct(Landroid/content/Context;ILandroid/util/SparseArray;Z)Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    .line 477
    .local v0, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
