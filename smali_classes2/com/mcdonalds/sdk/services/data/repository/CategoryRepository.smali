.class public Lcom/mcdonalds/sdk/services/data/repository/CategoryRepository;
.super Ljava/lang/Object;
.source "CategoryRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
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
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Categories;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "category_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 20
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .local v6, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/Category;-><init>()V

    .line 25
    .local v7, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/Category;->populateFromCursor(Landroid/database/Cursor;)V

    .line 26
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 29
    .end local v7    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 33
    .end local v6    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    :goto_1
    return-object v6

    :cond_1
    move-object v6, v2

    goto :goto_1
.end method
