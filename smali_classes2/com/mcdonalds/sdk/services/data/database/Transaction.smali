.class public Lcom/mcdonalds/sdk/services/data/database/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private batchInsertMultiple(Ljava/lang/String;Ljava/util/List;)V
    .locals 22
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p2, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v2, 0x3e7

    .line 401
    .local v2, "MAX_PARAMS":I
    invoke-static/range {p2 .. p2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 406
    .local v7, "initialValues":Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 407
    .local v9, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v18, 0x3e7

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v19

    div-int v12, v18, v19

    .line 408
    .local v12, "maxValueListInsertPerBatch":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    .line 409
    .local v16, "valueListCount":I
    rem-int v13, v16, v12

    .line 413
    .local v13, "remainingBatchInsert":I
    move/from16 v3, v16

    .line 414
    .local v3, "batchInsertCount":I
    move/from16 v0, v16

    if-lt v0, v12, :cond_2

    .line 415
    move v3, v12

    .line 418
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v3}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->getBatchedCompiledStatement(Ljava/lang/String;Landroid/content/ContentValues;I)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    .line 419
    .local v14, "statement":Landroid/database/sqlite/SQLiteStatement;
    if-eqz v14, :cond_c

    .line 420
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    div-int v18, v16, v3

    move/from16 v0, v18

    if-ge v5, v0, :cond_b

    .line 421
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v3, :cond_a

    .line 422
    mul-int v18, v5, v3

    add-int v18, v18, v8

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    .line 423
    .local v17, "values":Landroid/content/ContentValues;
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v18

    mul-int v18, v18, v8

    add-int/lit8 v6, v18, 0x1

    .line 424
    .local v6, "index":I
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 425
    .local v4, "colName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 426
    .local v15, "value":Ljava/lang/Object;
    instance-of v0, v15, Ljava/lang/Integer;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 427
    check-cast v15, Ljava/lang/Integer;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Integer;->longValue()J

    move-result-wide v10

    .line 428
    .local v10, "longValue":J
    invoke-virtual {v14, v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 441
    .end local v10    # "longValue":J
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 442
    goto :goto_3

    .line 429
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, v15, Ljava/lang/Long;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 430
    check-cast v15, Ljava/lang/Long;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v14, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4

    .line 431
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, v15, Ljava/lang/Boolean;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 432
    check-cast v15, Ljava/lang/Boolean;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_5

    const-wide/16 v10, 0x1

    .line 433
    .restart local v10    # "longValue":J
    :goto_5
    invoke-virtual {v14, v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4

    .line 432
    .end local v10    # "longValue":J
    :cond_5
    const-wide/16 v10, 0x0

    goto :goto_5

    .line 434
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, v15, Ljava/lang/Double;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 435
    check-cast v15, Ljava/lang/Double;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v14, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_4

    .line 436
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, v15, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 437
    check-cast v15, Ljava/lang/String;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v14, v6, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    .line 439
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v14, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 421
    .end local v4    # "colName":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/Object;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 444
    .end local v6    # "index":I
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_a
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 445
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 447
    .end local v8    # "j":I
    :cond_b
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 451
    .end local v5    # "i":I
    :cond_c
    move/from16 v0, v16

    if-le v0, v12, :cond_0

    if-lez v13, :cond_0

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v13}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->getBatchedCompiledStatement(Ljava/lang/String;Landroid/content/ContentValues;I)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    .line 454
    if-eqz v14, :cond_0

    .line 455
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_6
    if-ge v8, v13, :cond_14

    .line 456
    div-int v18, v16, v12

    mul-int v18, v18, v12

    add-int v18, v18, v8

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    .line 457
    .restart local v17    # "values":Landroid/content/ContentValues;
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v18

    mul-int v18, v18, v8

    add-int/lit8 v6, v18, 0x1

    .line 458
    .restart local v6    # "index":I
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 459
    .restart local v4    # "colName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 460
    .restart local v15    # "value":Ljava/lang/Object;
    instance-of v0, v15, Ljava/lang/Integer;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 461
    check-cast v15, Ljava/lang/Integer;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Integer;->longValue()J

    move-result-wide v10

    .line 462
    .restart local v10    # "longValue":J
    invoke-virtual {v14, v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 475
    .end local v10    # "longValue":J
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 476
    goto :goto_7

    .line 463
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_d
    instance-of v0, v15, Ljava/lang/Long;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 464
    check-cast v15, Ljava/lang/Long;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v14, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_8

    .line 465
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_e
    instance-of v0, v15, Ljava/lang/Boolean;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 466
    check-cast v15, Ljava/lang/Boolean;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_f

    const-wide/16 v10, 0x1

    .line 467
    .restart local v10    # "longValue":J
    :goto_9
    invoke-virtual {v14, v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_8

    .line 466
    .end local v10    # "longValue":J
    :cond_f
    const-wide/16 v10, 0x0

    goto :goto_9

    .line 468
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_10
    instance-of v0, v15, Ljava/lang/Double;

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 469
    check-cast v15, Ljava/lang/Double;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v14, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_8

    .line 470
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_11
    instance-of v0, v15, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 471
    check-cast v15, Ljava/lang/String;

    .end local v15    # "value":Ljava/lang/Object;
    invoke-virtual {v14, v6, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_8

    .line 473
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_12
    invoke-virtual {v14, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 455
    .end local v4    # "colName":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/Object;
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 478
    .end local v6    # "index":I
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_14
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 479
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0
.end method

.method private getBatchedCompiledStatement(Ljava/lang/String;Landroid/content/ContentValues;I)Landroid/database/sqlite/SQLiteStatement;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "maxValueListInsertPerBatch"    # I

    .prologue
    const/16 v8, 0x29

    const/16 v7, 0x28

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v4, "sql":Ljava/lang/StringBuilder;
    const-string v5, "INSERT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v5, " INTO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 494
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    .line 495
    .local v3, "size":I
    :goto_0
    if-lez v3, :cond_6

    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, "i":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 498
    .local v0, "colName":Ljava/lang/String;
    if-lez v1, :cond_1

    const-string v5, ","

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    add-int/lit8 v1, v1, 0x1

    .line 501
    goto :goto_1

    .line 494
    .end local v0    # "colName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 498
    .restart local v0    # "colName":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_1
    const-string v5, ""

    goto :goto_2

    .line 502
    .end local v0    # "colName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    const-string v5, " VALUES "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, p3, :cond_7

    .line 505
    if-lez v2, :cond_3

    .line 506
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_5

    .line 510
    if-lez v1, :cond_4

    const-string v5, ",?"

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 510
    :cond_4
    const-string v5, "?"

    goto :goto_5

    .line 512
    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 515
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_6
    const/4 v5, 0x0

    .line 518
    :goto_6
    return-object v5

    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_7
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    goto :goto_6
.end method

.method private getCompiledStatement(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/sqlite/SQLiteStatement;
    .locals 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/16 v6, 0x29

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v3, "sql":Ljava/lang/StringBuilder;
    const-string v4, "INSERT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v4, " INTO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 205
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    .line 206
    .local v2, "size":I
    :goto_0
    if-lez v2, :cond_4

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "i":I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    .local v0, "colName":Ljava/lang/String;
    if-lez v1, :cond_1

    const-string v4, ","

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v1, v1, 0x1

    .line 212
    goto :goto_1

    .line 205
    .end local v0    # "colName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    .restart local v0    # "colName":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_1
    const-string v4, ""

    goto :goto_2

    .line 213
    .end local v0    # "colName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    const-string v4, " VALUES ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    .line 216
    if-lez v1, :cond_3

    const-string v4, ",?"

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 216
    :cond_3
    const-string v4, "?"

    goto :goto_4

    .line 219
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v4, ") VALUES (NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    return-object v4
.end method

.method private declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;

    move-result-object v0

    .line 31
    .local v0, "helper":Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 30
    .end local v0    # "helper":Lcom/mcdonalds/sdk/services/data/database/DatabaseHelper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private insertMultiple(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 18
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p3, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static/range {p3 .. p3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 195
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 169
    .local v6, "initialValues":Landroid/content/ContentValues;
    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 170
    .local v7, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->getCompiledStatement(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 171
    .local v10, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 172
    .local v12, "values":Landroid/content/ContentValues;
    const/4 v5, 0x1

    .line 173
    .local v5, "index":I
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 174
    .local v4, "colName":Ljava/lang/String;
    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 175
    .local v11, "value":Ljava/lang/Object;
    instance-of v15, v11, Ljava/lang/Integer;

    if-eqz v15, :cond_1

    .line 176
    check-cast v11, Ljava/lang/Integer;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    .line 177
    .local v8, "longValue":J
    invoke-virtual {v10, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 190
    .end local v8    # "longValue":J
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 191
    goto :goto_2

    .line 178
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v15, v11, Ljava/lang/Long;

    if-eqz v15, :cond_2

    .line 179
    check-cast v11, Ljava/lang/Long;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v10, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_3

    .line 180
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v15, v11, Ljava/lang/Boolean;

    if-eqz v15, :cond_4

    .line 181
    check-cast v11, Ljava/lang/Boolean;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_3

    const-wide/16 v8, 0x1

    .line 182
    .restart local v8    # "longValue":J
    :goto_4
    invoke-virtual {v10, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_3

    .line 181
    .end local v8    # "longValue":J
    :cond_3
    const-wide/16 v8, 0x0

    goto :goto_4

    .line 183
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v15, v11, Ljava/lang/Double;

    if-eqz v15, :cond_5

    .line 184
    check-cast v11, Ljava/lang/Double;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v10, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_3

    .line 185
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v15, v11, Ljava/lang/String;

    if-eqz v15, :cond_6

    .line 186
    check-cast v11, Ljava/lang/String;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v10, v5, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 188
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 192
    .end local v4    # "colName":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_1

    .line 194
    .end local v5    # "index":I
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_8
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0
.end method

.method private updateManyToManyRelationships(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Z)V
    .locals 1
    .param p1, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    .param p2, "delete"    # Z

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->updateManyToManyRelationships(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;ZZ)V

    .line 228
    return-void
.end method

.method private updateManyToManyRelationships(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;ZZ)V
    .locals 30
    .param p1, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    .param p2, "delete"    # Z
    .param p3, "clearPreviousRecord"    # Z

    .prologue
    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, "tableName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeys()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 233
    .local v5, "key":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    iget v0, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationType:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v9, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationTableName:Ljava/lang/String;

    .line 236
    .local v9, "relationTableName":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 237
    const-string v19, "%s_%s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    aput-object v14, v20, v22

    const/16 v22, 0x1

    iget-object v0, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 240
    :cond_1
    if-eqz p3, :cond_4

    .line 241
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v13, "selectionBuilder":Ljava/lang/StringBuilder;
    iget-object v0, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v12, v0, [Ljava/lang/String;

    .line 243
    .local v12, "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v0, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_3

    .line 244
    iget-object v0, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v2, v19, v4

    .line 245
    .local v2, "columnName":Ljava/lang/String;
    const-string v19, "%s_%s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    aput-object v14, v20, v22

    const/16 v22, 0x1

    aput-object v2, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getValues()Landroid/content/ContentValues;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 247
    .local v15, "value":Ljava/lang/String;
    if-lez v4, :cond_2

    .line 248
    const-string v19, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_2
    const-string v19, "%s=?"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    aput-object v6, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    aput-object v15, v12, v4

    .line 243
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 254
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/database/sqlite/SQLiteDatabase;

    move/from16 v22, v0

    if-nez v22, :cond_6

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 257
    .end local v4    # "i":I
    .end local v12    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "selectionBuilder":Ljava/lang/StringBuilder;
    :cond_4
    :goto_2
    if-nez p2, :cond_0

    .line 258
    iget-object v0, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationTableName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 259
    .local v16, "valueKey":Ljava/lang/String;
    if-nez v16, :cond_5

    .line 260
    iget-object v0, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 262
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 263
    .local v18, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v18, :cond_0

    .line 264
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v11, "relationValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-object v0, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v19, 0x0

    move/from16 v20, v19

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    aget-object v7, v22, v20

    .line 266
    .local v7, "referencedColumnName":Ljava/lang/String;
    const-string v19, "%s_%s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v7, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "formattedName":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    .line 268
    .local v17, "values":Landroid/content/ContentValues;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, "referencedColumnValue":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v10, "relationValues":Landroid/content/ContentValues;
    iget-object v0, v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    aget-object v2, v25, v19

    .line 272
    .restart local v2    # "columnName":Ljava/lang/String;
    const-string v27, "%s_%s"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v14, v28, v29

    const/16 v29, 0x1

    aput-object v2, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 273
    .restart local v6    # "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getValues()Landroid/content/ContentValues;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 274
    .restart local v15    # "value":Ljava/lang/String;
    invoke-virtual {v10, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 254
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v3    # "formattedName":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "referencedColumnName":Ljava/lang/String;
    .end local v8    # "referencedColumnValue":Ljava/lang/String;
    .end local v10    # "relationValues":Landroid/content/ContentValues;
    .end local v11    # "relationValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "valueKey":Ljava/lang/String;
    .end local v17    # "values":Landroid/content/ContentValues;
    .end local v18    # "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "i":I
    .restart local v12    # "selectionArgs":[Ljava/lang/String;
    .restart local v13    # "selectionBuilder":Ljava/lang/StringBuilder;
    :cond_6
    check-cast v19, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v9, v1, v12}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 276
    .end local v4    # "i":I
    .end local v12    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "selectionBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "formattedName":Ljava/lang/String;
    .restart local v7    # "referencedColumnName":Ljava/lang/String;
    .restart local v8    # "referencedColumnValue":Ljava/lang/String;
    .restart local v10    # "relationValues":Landroid/content/ContentValues;
    .restart local v11    # "relationValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v16    # "valueKey":Ljava/lang/String;
    .restart local v17    # "values":Landroid/content/ContentValues;
    .restart local v18    # "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_7
    invoke-virtual {v10, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 265
    .end local v8    # "referencedColumnValue":Ljava/lang/String;
    .end local v10    # "relationValues":Landroid/content/ContentValues;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_8
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto/16 :goto_3

    .line 281
    .end local v3    # "formattedName":Ljava/lang/String;
    .end local v7    # "referencedColumnName":Ljava/lang/String;
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1, v11}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insertMultiple(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 286
    .end local v5    # "key":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    .end local v9    # "relationTableName":Ljava/lang/String;
    .end local v11    # "relationValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v16    # "valueKey":Ljava/lang/String;
    .end local v18    # "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_a
    return-void
.end method

.method private updateManyToManyRelationshipsFast(Ljava/util/List;ZZ)V
    .locals 36
    .param p2, "delete"    # Z
    .param p3, "clearPreviousRecord"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;>;"
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeys()Ljava/util/List;

    move-result-object v8

    .line 297
    .local v8, "foreignKeys":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v4, "accum":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v26

    .line 300
    .local v26, "tableName":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v6, v0, [Ljava/lang/String;

    .line 301
    .local v6, "defaultRelationTableName":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v25, v0

    .line 302
    .local v25, "tableColumnName":[[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 304
    .local v16, "refTableColName":[[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v10, v0, :cond_2

    .line 305
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 306
    .local v7, "foreignKey":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    const-string v31, "%s_%s"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v26, v32, v33

    const/16 v33, 0x1

    iget-object v0, v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v6, v10

    .line 308
    iget-object v0, v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v25, v10

    .line 309
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    iget-object v0, v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_0

    .line 310
    iget-object v0, v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    aget-object v5, v31, v11

    .line 311
    .local v5, "columnName":Ljava/lang/String;
    aget-object v31, v25, v10

    const-string v32, "%s_%s"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v26, v33, v34

    const/16 v34, 0x1

    aput-object v5, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v31, v11

    .line 309
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 314
    .end local v5    # "columnName":Ljava/lang/String;
    :cond_0
    iget-object v0, v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v16, v10

    .line 315
    const/4 v11, 0x0

    :goto_2
    iget-object v0, v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_1

    .line 316
    aget-object v31, v16, v10

    const-string v32, "%s_%s"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    iget-object v0, v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    move-object/from16 v35, v0

    aput-object v35, v33, v34

    const/16 v34, 0x1

    iget-object v0, v7, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    move-object/from16 v35, v0

    aget-object v35, v35, v11

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v31, v11

    .line 315
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 304
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 320
    .end local v7    # "foreignKey":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    .end local v11    # "j":I
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_e

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    .line 321
    .local v13, "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getValues()Landroid/content/ContentValues;

    move-result-object v14

    .line 323
    .local v14, "modelContentValues":Landroid/content/ContentValues;
    const/4 v10, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v10, v0, :cond_3

    .line 324
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 325
    .local v12, "key":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    iget v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationType:I

    move/from16 v31, v0

    const/16 v33, 0x2

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 327
    iget-object v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationTableName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 328
    .local v19, "relationTableName":Ljava/lang/String;
    if-nez v19, :cond_4

    .line 329
    aget-object v19, v6, v10

    .line 332
    :cond_4
    if-eqz p3, :cond_7

    .line 333
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v24, "selectionBuilder":Ljava/lang/StringBuilder;
    iget-object v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 335
    .local v23, "selectionArgs":[Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    iget-object v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_6

    .line 336
    iget-object v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    aget-object v5, v31, v11

    .line 337
    .restart local v5    # "columnName":Ljava/lang/String;
    aget-object v31, v25, v10

    aget-object v15, v31, v11

    .line 338
    .local v15, "name":Ljava/lang/String;
    invoke-virtual {v14, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 339
    .local v27, "value":Ljava/lang/String;
    if-lez v11, :cond_5

    .line 340
    const-string v31, " AND "

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_5
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v33, "=?"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    aput-object v27, v23, v11

    .line 335
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 346
    .end local v5    # "columnName":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v31, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    instance-of v0, v0, Landroid/database/sqlite/SQLiteDatabase;

    move/from16 v34, v0

    if-nez v34, :cond_a

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 349
    .end local v11    # "j":I
    .end local v23    # "selectionArgs":[Ljava/lang/String;
    .end local v24    # "selectionBuilder":Ljava/lang/StringBuilder;
    :cond_7
    :goto_5
    if-nez p2, :cond_d

    .line 350
    iget-object v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationTableName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 351
    .local v28, "valueKey":Ljava/lang/String;
    if-nez v28, :cond_8

    .line 352
    iget-object v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 354
    :cond_8
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v30

    .line 355
    .local v30, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v30, :cond_d

    .line 356
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    .line 357
    .local v21, "relationValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v21, :cond_9

    .line 358
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "relationValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .restart local v21    # "relationValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_9
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .local v22, "rvNameValues":Landroid/content/ContentValues;
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_6
    iget-object v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_b

    .line 364
    iget-object v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    aget-object v5, v31, v11

    .line 365
    .restart local v5    # "columnName":Ljava/lang/String;
    aget-object v31, v25, v10

    aget-object v15, v31, v11

    .line 366
    .restart local v15    # "name":Ljava/lang/String;
    invoke-virtual {v14, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 367
    .restart local v27    # "value":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 346
    .end local v5    # "columnName":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v21    # "relationValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v22    # "rvNameValues":Landroid/content/ContentValues;
    .end local v27    # "value":Ljava/lang/String;
    .end local v28    # "valueKey":Ljava/lang/String;
    .end local v30    # "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v23    # "selectionArgs":[Ljava/lang/String;
    .restart local v24    # "selectionBuilder":Ljava/lang/StringBuilder;
    :cond_a
    check-cast v31, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    .line 370
    .end local v23    # "selectionArgs":[Ljava/lang/String;
    .end local v24    # "selectionBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "relationValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v22    # "rvNameValues":Landroid/content/ContentValues;
    .restart local v28    # "valueKey":Ljava/lang/String;
    .restart local v30    # "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_b
    const/4 v11, 0x0

    :goto_7
    iget-object v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_d

    .line 371
    iget-object v0, v12, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    move-object/from16 v31, v0

    aget-object v17, v31, v11

    .line 372
    .local v17, "referencedColumnName":Ljava/lang/String;
    aget-object v31, v16, v10

    aget-object v9, v31, v11

    .line 374
    .local v9, "formattedName":Ljava/lang/String;
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_c

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ContentValues;

    .line 375
    .local v29, "values":Landroid/content/ContentValues;
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 376
    .local v18, "referencedColumnValue":Ljava/lang/String;
    new-instance v20, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 377
    .local v20, "relationValues":Landroid/content/ContentValues;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 370
    .end local v18    # "referencedColumnValue":Ljava/lang/String;
    .end local v20    # "relationValues":Landroid/content/ContentValues;
    .end local v29    # "values":Landroid/content/ContentValues;
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 323
    .end local v9    # "formattedName":Ljava/lang/String;
    .end local v11    # "j":I
    .end local v17    # "referencedColumnName":Ljava/lang/String;
    .end local v19    # "relationTableName":Ljava/lang/String;
    .end local v21    # "relationValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v22    # "rvNameValues":Landroid/content/ContentValues;
    .end local v28    # "valueKey":Ljava/lang/String;
    .end local v30    # "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 389
    .end local v12    # "key":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
    .end local v13    # "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    .end local v14    # "modelContentValues":Landroid/content/ContentValues;
    :cond_e
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_9
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_f

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 390
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v12, v1}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->batchInsertMultiple(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_9

    .line 392
    .end local v12    # "key":Ljava/lang/String;
    :cond_f
    return-void
.end method


# virtual methods
.method public clearAllData()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 111
    const/16 v3, 0x1b

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "social_networks"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "categories"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "facilities"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "menu_types"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "payment_methods"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "feedback_type"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "pods"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "dimensions"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "ingredients"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "products_ingredients"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "products_extras"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "products_choices"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "products"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "promotions"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string v4, "tender_types"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    const-string v4, "store_catalogs_promotions"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    const-string v4, "store_catalogs_facilities"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v4, "store_catalogs"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "store_product_pods"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "store_product_dimensions"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "store_product_menu_types"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "store_product"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "store_product_category"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "nutrients"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "recipe_component"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "allergen"

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-string v4, "recipe_footer"

    aput-object v4, v1, v3

    .line 140
    .local v1, "tables":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 143
    .local v0, "table":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    instance-of v7, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_0

    invoke-virtual {v2, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 143
    :cond_0
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v0, v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 144
    :catch_0
    move-exception v2

    goto :goto_1

    .line 148
    .end local v0    # "table":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public commit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 152
    return-void
.end method

.method public delete(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;)V
    .locals 5
    .param p1, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v3

    .line 91
    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 94
    :goto_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->updateManyToManyRelationships(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Z)V

    .line 97
    :cond_0
    return-void

    .line 91
    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public insert(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;)V
    .locals 5
    .param p1, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getValues()Landroid/content/ContentValues;

    move-result-object v3

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 37
    :goto_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->updateManyToManyRelationships(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Z)V

    .line 40
    :cond_0
    return-void

    .line 36
    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public insert(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "modelCollection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insert(Ljava/util/Collection;Z)V

    .line 44
    return-void
.end method

.method public insert(Ljava/util/Collection;Z)V
    .locals 7
    .param p2, "clearPreviousRecord"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .local p1, "modelCollection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;>;"
    const/4 v6, 0x0

    .line 47
    invoke-static {p1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .local v1, "models":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;>;"
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "tableName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v3, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    .line 54
    .local v0, "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeys()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 56
    invoke-direct {p0, v0, v6, p2}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->updateManyToManyRelationships(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;ZZ)V

    goto :goto_1

    .line 59
    .end local v0    # "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v3}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insertMultiple(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public insertFast(Ljava/util/Collection;Z)V
    .locals 6
    .param p2, "clearPreviousRecord"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "modelCollection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;>;"
    const/4 v5, 0x0

    .line 63
    invoke-static {p1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .local v1, "models":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "tableName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v3, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeys()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 71
    invoke-direct {p0, v1, v5, p2}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->updateManyToManyRelationshipsFast(Ljava/util/List;ZZ)V

    .line 74
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    .line 75
    .local v0, "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v0    # "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v3}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->insertMultiple(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public update(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;)V
    .locals 6
    .param p1, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/Transaction;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 83
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    .line 81
    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    :goto_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getForeignKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/database/Transaction;->updateManyToManyRelationships(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Z)V

    .line 88
    :cond_0
    return-void

    .line 81
    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
