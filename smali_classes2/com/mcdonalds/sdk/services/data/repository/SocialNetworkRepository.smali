.class public Lcom/mcdonalds/sdk/services/data/repository/SocialNetworkRepository;
.super Ljava/lang/Object;
.source "SocialNetworkRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getById(Landroid/content/Context;I)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 40
    const-string v0, "%s=?"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 42
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$SocialNetworks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v5, "id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 44
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 45
    .local v7, "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    if-eqz v6, :cond_1

    .line 46
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 47
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .end local v7    # "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;-><init>()V

    .line 49
    .restart local v7    # "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->populateFromCursor(Landroid/database/Cursor;)V

    .line 51
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_1
    return-object v7
.end method

.method public static getValid(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 19
    const-string v0, "%s=?"

    new-array v1, v10, [Ljava/lang/Object;

    const-string v5, "is_valid"

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "1"

    aput-object v0, v4, v9

    .line 21
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$SocialNetworks;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 23
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 25
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .local v8, "socialNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;-><init>()V

    .line 28
    .local v7, "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->populateFromCursor(Landroid/database/Cursor;)V

    .line 29
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 32
    .end local v7    # "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 36
    .end local v8    # "socialNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;"
    :goto_1
    return-object v8

    :cond_1
    move-object v8, v2

    goto :goto_1
.end method
