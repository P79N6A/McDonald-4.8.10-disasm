.class public Lcom/mcdonalds/sdk/services/data/provider/helper/ProductHelper;
.super Ljava/lang/Object;
.source "ProductHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProduct(Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p0, "helper"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .local v5, "projectionBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    .line 23
    .local v0, "dummyProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getFields()Ljava/util/List;

    move-result-object v4

    .line 24
    .local v4, "productFields":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 25
    if-lez v3, :cond_0

    .line 26
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    .line 29
    .local v2, "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    const-string v8, " p.%1$s p_%1$s,"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->name:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v8, " pb.%1$s pb_%1$s"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->name:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    .end local v2    # "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    :cond_1
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 34
    .local v1, "dummyStoreProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getFields()Ljava/util/List;

    move-result-object v7

    .line 35
    .local v7, "storeProductFields":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;>;"
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 36
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    .line 38
    .restart local v2    # "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    const-string v8, " sp.%1$s sp_%1$s,"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->name:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v8, " spb.%1$s spb_%1$s"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->name:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 43
    .end local v2    # "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    :cond_2
    const-string v8, ", ifnull(ap.%1$s, 0) p_%2$s"

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "base_product_id"

    aput-object v10, v9, v11

    const-string v10, "advertisable_base_product_id"

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v8, "select %1$s from %2$s p inner join %3$s sp on sp.%4$s = p.%5$s left join %6$s ap on (p.%5$s = ap.%7$s) and sp.%9$s = ap.%10$s and ap.%11$s = ? left join %2$s pb on (pb.%5$s = ap.%8$s) left join %3$s spb on spb.%4$s = pb.%5$s and spb.%9$s = sp.%9$s where cast(? as integer) in (p.%5$s, pb.%5$s) and sp.%9$s = ? group by ifnull(ap.%7$s, p.%5$s) order by pb_id desc limit 1"

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/Object;

    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    const-string v10, "products"

    aput-object v10, v9, v12

    const-string v10, "store_product"

    aput-object v10, v9, v13

    const/4 v10, 0x3

    const-string v11, "id"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "external_id"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "advertisable_promotion"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "base_product_id"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "swap_product_id"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "store_id"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "store_id"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "weekday"

    aput-object v11, v9, v10

    .line 47
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    instance-of v9, v8, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_3

    invoke-virtual {v8, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_2
    return-object v8

    :cond_3
    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v8, v6, p1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_2
.end method
