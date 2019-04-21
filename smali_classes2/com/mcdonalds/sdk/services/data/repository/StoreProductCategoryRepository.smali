.class public Lcom/mcdonalds/sdk/services/data/repository/StoreProductCategoryRepository;
.super Ljava/lang/Object;
.source "StoreProductCategoryRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategoryByStoreProduct(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;
    .locals 12
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
            "Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 19
    const-string v0, "%s=? and %s=?"

    new-array v1, v11, [Ljava/lang/Object;

    const-string v5, "product_id"

    aput-object v5, v1, v9

    const-string v5, "store_id"

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getProductId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 22
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getStoreId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 24
    .local v4, "selectArg":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreProductCat;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 26
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v8, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    if-eqz v7, :cond_1

    .line 28
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v6, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;-><init>()V

    .line 31
    .local v6, "category":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;->populateFromCursor(Landroid/database/Cursor;)V

    .line 32
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 35
    .end local v6    # "category":Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_1
    return-object v8
.end method
