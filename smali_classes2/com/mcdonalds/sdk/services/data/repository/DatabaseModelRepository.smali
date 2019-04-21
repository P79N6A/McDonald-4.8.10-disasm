.class public Lcom/mcdonalds/sdk/services/data/repository/DatabaseModelRepository;
.super Ljava/lang/Object;
.source "DatabaseModelRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getRelatedModels(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "relationName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "identifier"    # [Ljava/lang/String;
    .param p4, "foreignKey"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .prologue
    .line 17
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/repository/DatabaseModelRepository;->getRelatedModels(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected static getRelatedModels(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "relationName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "identifier"    # [Ljava/lang/String;
    .param p4, "foreignKey"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 22
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    :cond_0
    const-string v1, "%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 25
    :cond_1
    const-string v1, "%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v6, v6, v12

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 26
    .local v11, "referencedIdColumn":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v10, "modelSubQueryBuilder":Ljava/lang/StringBuilder;
    const-string v1, "select %s from %s where "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v3, v5

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v8, v1, :cond_3

    .line 29
    if-lez v8, :cond_2

    .line 30
    const-string v1, " AND "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_2
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    aget-object v7, v1, v8

    .line 33
    .local v7, "columnName":Ljava/lang/String;
    const-string v1, "%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/4 v5, 0x1

    aput-object v7, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 34
    .local v9, "modelId":Ljava/lang/String;
    const-string v1, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 36
    .end local v7    # "columnName":Ljava/lang/String;
    .end local v9    # "modelId":Ljava/lang/String;
    :cond_3
    const-string v1, "%s in (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v6, v6, v12

    aput-object v6, v3, v5

    const/4 v5, 0x1

    .line 39
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 36
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "selection":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/data/provider/Contract;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 43
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
