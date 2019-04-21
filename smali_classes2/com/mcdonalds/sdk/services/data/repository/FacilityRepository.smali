.class public Lcom/mcdonalds/sdk/services/data/repository/FacilityRepository;
.super Ljava/lang/Object;
.source "FacilityRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Facilities;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 21
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 23
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v7, "facilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    new-instance v8, Lcom/mcdonalds/sdk/modules/models/Facility;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/modules/models/Facility;-><init>()V

    .line 26
    .local v8, "facility":Lcom/mcdonalds/sdk/modules/models/Facility;
    invoke-virtual {v8, v6}, Lcom/mcdonalds/sdk/modules/models/Facility;->populateFromCursor(Landroid/database/Cursor;)V

    .line 27
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .end local v7    # "facilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    .end local v8    # "facility":Lcom/mcdonalds/sdk/modules/models/Facility;
    :cond_0
    move-object v7, v2

    .line 32
    :cond_1
    return-object v7
.end method

.method public static getFacilityMap(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Facilities;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 38
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 39
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 41
    .local v8, "facilityMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/Facility;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/Facility;-><init>()V

    .line 43
    .local v7, "facility":Lcom/mcdonalds/sdk/modules/models/Facility;
    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/modules/models/Facility;->populateFromCursor(Landroid/database/Cursor;)V

    .line 44
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Facility;->getID()I

    move-result v0

    invoke-virtual {v8, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .end local v7    # "facility":Lcom/mcdonalds/sdk/modules/models/Facility;
    .end local v8    # "facilityMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    :cond_0
    move-object v8, v2

    .line 49
    :cond_1
    return-object v8
.end method
