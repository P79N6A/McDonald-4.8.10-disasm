.class public Lcom/mcdonalds/sdk/services/data/repository/FeedBackTypeRepository;
.super Ljava/lang/Object;
.source "FeedBackTypeRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getForSendRating(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/FeedBackType;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 16
    const-string v0, "%s like ?"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v5, "name"

    aput-object v5, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 17
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    const-string v0, "app"

    aput-object v0, v4, v8

    .line 19
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "feedback_type"

    .line 20
    invoke-static {v1}, Lcom/mcdonalds/sdk/services/data/provider/Contract;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v2

    .line 19
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 22
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/FeedBackType;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/FeedBackType;-><init>()V

    .line 24
    .local v7, "feedBackType":Lcom/mcdonalds/sdk/modules/models/FeedBackType;
    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/modules/models/FeedBackType;->populateFromCursor(Landroid/database/Cursor;)V

    .line 25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 28
    .end local v7    # "feedBackType":Lcom/mcdonalds/sdk/modules/models/FeedBackType;
    :goto_0
    return-object v7

    :cond_0
    move-object v7, v2

    goto :goto_0
.end method
