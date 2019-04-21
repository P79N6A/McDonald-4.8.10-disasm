.class public Lcom/mcdonalds/sdk/services/data/repository/StoreCatalogRepository;
.super Lcom/mcdonalds/sdk/services/data/repository/DatabaseModelRepository;
.source "StoreCatalogRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/repository/DatabaseModelRepository;-><init>()V

    return-void
.end method

.method private static getFacilitiesByStoreId(Landroid/content/Context;I)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v3, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v4, "store_id"

    const-string v5, "facilities"

    const-string v6, "id"

    invoke-direct {v3, v4, v5, v6}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v3, "facilityForeignKey":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    const-string v4, "store_catalogs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 53
    invoke-static {p0, v4, v1, v5, v3}, Lcom/mcdonalds/sdk/services/data/repository/StoreCatalogRepository;->getRelatedModels(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;)Landroid/database/Cursor;

    move-result-object v0

    .line 60
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v1, "facilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/Facility;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/Facility;-><init>()V

    .line 65
    .local v2, "facility":Lcom/mcdonalds/sdk/modules/models/Facility;
    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/Facility;->populateFromCursor(Landroid/database/Cursor;)V

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 69
    .end local v2    # "facility":Lcom/mcdonalds/sdk/modules/models/Facility;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 74
    .end local v1    # "facilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    :cond_1
    return-object v1
.end method

.method public static getMap(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreCatalog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$StoreCatalogs;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 26
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 27
    .local v8, "storeCatalogMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    if-eqz v6, :cond_1

    .line 28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 30
    new-instance v8, Landroid/util/SparseArray;

    .end local v8    # "storeCatalogMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .restart local v8    # "storeCatalogMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;-><init>()V

    .line 33
    .local v7, "storeCatalog":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->populateFromCursor(Landroid/database/Cursor;)V

    .line 34
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getStoreId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mcdonalds/sdk/services/data/repository/StoreCatalogRepository;->getFacilitiesByStoreId(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setFacilities(Ljava/util/List;)V

    .line 35
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getStoreId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mcdonalds/sdk/services/data/repository/StoreCatalogRepository;->getPromotionsByStoreId(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setPromotions(Ljava/util/List;)V

    .line 36
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->getStoreId()I

    move-result v0

    invoke-virtual {v8, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 40
    .end local v7    # "storeCatalog":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_1
    return-object v8
.end method

.method private static getPromotionsByStoreId(Landroid/content/Context;I)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v4, "store_id"

    const-string v5, "promotions"

    const-string v6, "id"

    invoke-direct {v2, v4, v5, v6}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v2, "promotionForeignKey":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    const-string v4, "store_catalogs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 84
    invoke-static {p0, v4, v3, v5, v2}, Lcom/mcdonalds/sdk/services/data/repository/StoreCatalogRepository;->getRelatedModels(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;)Landroid/database/Cursor;

    move-result-object v0

    .line 91
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v3, "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Promotion;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/Promotion;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/Promotion;-><init>()V

    .line 96
    .local v1, "promotion":Lcom/mcdonalds/sdk/modules/models/Promotion;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/Promotion;->populateFromCursor(Landroid/database/Cursor;)V

    .line 97
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 100
    .end local v1    # "promotion":Lcom/mcdonalds/sdk/modules/models/Promotion;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    .end local v3    # "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Promotion;>;"
    :cond_1
    return-object v3
.end method
