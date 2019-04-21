.class public Lcom/mcdonalds/sdk/services/data/repository/MenuTypeRepository;
.super Ljava/lang/Object;
.source "MenuTypeRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$MenuTypes;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "id"

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 28
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 29
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 30
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .local v8, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/MenuType;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/MenuType;-><init>()V

    .line 33
    .local v7, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/modules/models/MenuType;->populateFromCursor(Landroid/database/Cursor;)V

    .line 34
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 37
    .end local v7    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 41
    .end local v8    # "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    :goto_1
    return-object v8

    :cond_1
    move-object v8, v2

    goto :goto_1
.end method

.method public static getValid(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    const-string v2, "%s=?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "is_valid"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "selection":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v1, v5

    .line 21
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/repository/MenuTypeRepository;->get(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
