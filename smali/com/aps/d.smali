.class public Lcom/aps/d;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aps/d$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/d$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/aps/r;

.field private d:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    .line 31
    iput-object v2, p0, Lcom/aps/d;->c:Lcom/aps/r;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/d;->d:J

    .line 35
    iput-object v2, p0, Lcom/aps/d;->a:Ljava/lang/String;

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/aps/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "MD5"

    invoke-static {}, Lcom/amap/api/location/core/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/location/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/d;->a:Ljava/lang/String;

    .line 44
    :cond_0
    if-eqz p1, :cond_1

    .line 45
    invoke-direct {p0, p1}, Lcom/aps/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    const/4 v1, 0x1

    const-wide/32 v2, 0x100000

    invoke-static {v0, v1, v2, v3}, Lcom/aps/r;->a(Ljava/io/File;IJ)Lcom/aps/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/d;->c:Lcom/aps/r;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a([D[D)D
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    .line 679
    .line 682
    const/4 v0, 0x0

    move-wide v4, v2

    move-wide v6, v2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 683
    aget-wide v8, p1, v0

    aget-wide v10, p1, v0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 684
    aget-wide v8, p2, v0

    aget-wide v10, p2, v0

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    .line 685
    aget-wide v8, p1, v0

    aget-wide v10, p2, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    div-double v0, v6, v0

    return-wide v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Lcom/aps/d$a;
    .locals 23

    .prologue
    .line 456
    const/4 v7, 0x0

    .line 457
    new-instance v16, Ljava/util/Hashtable;

    invoke-direct/range {v16 .. v16}, Ljava/util/Hashtable;-><init>()V

    .line 458
    new-instance v17, Ljava/util/Hashtable;

    invoke-direct/range {v17 .. v17}, Ljava/util/Hashtable;-><init>()V

    .line 459
    new-instance v18, Ljava/util/Hashtable;

    invoke-direct/range {v18 .. v18}, Ljava/util/Hashtable;-><init>()V

    .line 463
    const/4 v4, 0x0

    .line 465
    const-string v5, "mem"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, v4

    .line 471
    :goto_0
    const/4 v15, 0x1

    move v8, v15

    .line 472
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    if-eqz v8, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 478
    const/4 v5, 0x0

    move-object/from16 v11, p1

    move-object v14, v4

    move v15, v5

    .line 487
    :goto_2
    if-eqz v7, :cond_2

    .line 574
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->clear()V

    .line 576
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->clear()V

    .line 578
    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->clear()V

    .line 580
    return-object v7

    .line 480
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 482
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v11, v5

    move-object v14, v4

    move v15, v8

    goto :goto_2

    .line 490
    :cond_2
    if-nez v14, :cond_3

    move v8, v15

    .line 491
    goto :goto_1

    .line 493
    :cond_3
    const/4 v4, 0x0

    move v8, v4

    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_f

    .line 494
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aps/d$a;

    .line 495
    const/4 v5, 0x0

    .line 497
    invoke-virtual {v4}, Lcom/aps/d$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 493
    :cond_4
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_3

    .line 503
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    .line 513
    invoke-virtual {v4}, Lcom/aps/d$a;->b()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 514
    invoke-virtual {v4}, Lcom/aps/d$a;->a()Lcom/aps/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aps/c;->i()F

    move-result v9

    const/high16 v10, 0x43960000    # 300.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    move v9, v5

    .line 527
    :goto_4
    invoke-virtual {v4}, Lcom/aps/d$a;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 529
    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->clear()V

    .line 530
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 531
    const-string v12, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 522
    :cond_6
    const/4 v5, 0x1

    move v9, v5

    goto :goto_4

    .line 533
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 534
    const-string v12, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 536
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v19

    .line 537
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v5

    new-array v0, v5, [D

    move-object/from16 v20, v0

    .line 538
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v5

    new-array v0, v5, [D

    move-object/from16 v21, v0

    .line 539
    const/4 v5, 0x0

    .line 540
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move v10, v5

    .line 541
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 542
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 543
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_8
    aput-wide v12, v20, v10

    .line 544
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_9
    aput-wide v12, v21, v10

    .line 545
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    .line 546
    goto :goto_7

    .line 543
    :cond_9
    const-wide/16 v12, 0x0

    goto :goto_8

    .line 544
    :cond_a
    const-wide/16 v12, 0x0

    goto :goto_9

    .line 547
    :cond_b
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->clear()V

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/aps/d;->a([D[D)D

    move-result-wide v12

    .line 552
    const-string v5, "mem"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 553
    if-eqz v9, :cond_c

    .line 554
    const-wide v20, 0x3feb333340000000L    # 0.8500000238418579

    cmpl-double v5, v12, v20

    if-lez v5, :cond_c

    :goto_a
    move v8, v15

    move-object v7, v4

    .line 570
    goto/16 :goto_1

    .line 559
    :cond_c
    const-wide v20, 0x3feb333340000000L    # 0.8500000238418579

    cmpl-double v5, v12, v20

    if-lez v5, :cond_4

    goto :goto_a

    .line 563
    :cond_d
    const-string v5, "db"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 564
    const-wide v20, 0x3feb333340000000L    # 0.8500000238418579

    cmpl-double v5, v12, v20

    if-lez v5, :cond_4

    goto :goto_a

    :cond_e
    move v9, v5

    goto/16 :goto_4

    :cond_f
    move-object v4, v7

    goto :goto_a

    :cond_10
    move-object v6, v4

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 63
    const/4 v0, 0x0

    .line 64
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v0, "locationCache"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, v0}, Lcom/aps/d;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "newlocationCache"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 88
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 89
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/aps/d;->a(Ljava/io/File;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p2}, Ljava/util/Hashtable;->clear()V

    .line 662
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 663
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 664
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 665
    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    .line 585
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 586
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 587
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 591
    invoke-direct {p0, p2, v4}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 592
    invoke-direct {p0, p1, v5}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 593
    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 594
    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 595
    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 598
    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 600
    :cond_1
    invoke-virtual {v6}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 601
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    new-array v8, v0, [D

    .line 602
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    new-array v9, v0, [D

    .line 603
    const/4 v0, 0x0

    .line 604
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v0

    .line 605
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 607
    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_3
    aput-wide v2, v8, v1

    .line 608
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_4
    aput-wide v2, v9, v1

    .line 609
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 610
    goto :goto_2

    .line 607
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 608
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_4

    .line 611
    :cond_4
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 612
    invoke-direct {p0, v8, v9}, Lcom/aps/d;->a([D[D)D

    move-result-wide v0

    .line 620
    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 622
    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 624
    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 626
    const-wide v2, 0x3feb333340000000L    # 0.8500000238418579

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 627
    const/4 v0, 0x1

    .line 629
    :goto_5
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 641
    const-string v1, ",access"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 642
    if-eq v1, v4, :cond_0

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 645
    :cond_1
    const-string v2, ",access"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 646
    if-eq v2, v4, :cond_0

    .line 649
    add-int/lit8 v2, v1, -0x11

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",access"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/aps/c;
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 291
    const-string v0, "mem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/aps/g;->l:Z

    if-nez v0, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/aps/d;->a()V

    .line 399
    :cond_0
    :goto_0
    return-object v2

    .line 300
    :cond_1
    const-string v0, ""

    .line 301
    if-eqz p1, :cond_8

    const-string v0, "#cellwifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 302
    const-string v0, "#cellwifi"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Lcom/aps/d$a;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_7

    .line 304
    const-string v1, "found#cellwifi"

    .line 331
    :goto_1
    iget-object v1, p0, Lcom/aps/d;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 332
    invoke-static {}, Lcom/amap/api/location/core/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/d;->a:Ljava/lang/String;

    .line 335
    :cond_2
    if-nez v0, :cond_13

    .line 337
    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 338
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "cell#"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    :cond_4
    iget-object v1, p0, Lcom/aps/d;->c:Lcom/aps/r;

    if-eqz v1, :cond_12

    .line 342
    iget-object v1, p0, Lcom/aps/d;->c:Lcom/aps/r;

    invoke-virtual {v1, p1}, Lcom/aps/r;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 344
    :goto_2
    if-eqz v1, :cond_11

    .line 345
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v0

    .line 346
    :goto_3
    if-eqz v4, :cond_6

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 347
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 348
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/aps/d;->a:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/amap/api/location/core/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 351
    if-eqz v1, :cond_10

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/aps/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/location/core/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 357
    new-instance v5, Lcom/aps/c;

    invoke-direct {v5, v0}, Lcom/aps/c;-><init>(Lorg/json/JSONObject;)V

    .line 358
    const-string v0, "mem"

    invoke-virtual {v5, v0}, Lcom/aps/c;->g(Ljava/lang/String;)V

    .line 359
    new-instance v1, Lcom/aps/d$a;

    invoke-direct {v1}, Lcom/aps/d$a;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    :try_start_2
    invoke-virtual {v1, v5}, Lcom/aps/d$a;->a(Lcom/aps/c;)V

    .line 361
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aps/d$a;->a(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_5

    .line 363
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 365
    :cond_5
    if-nez p1, :cond_c

    move-object v3, v1

    :cond_6
    :goto_4
    move-object v1, v3

    .line 399
    :goto_5
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/aps/d$a;->a()Lcom/aps/c;

    move-result-object v2

    goto/16 :goto_0

    .line 306
    :cond_7
    const-string v1, "no found"

    goto/16 :goto_1

    .line 308
    :cond_8
    if-eqz p1, :cond_a

    const-string v0, "#wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_a

    .line 309
    const-string v0, "#wifi"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Lcom/aps/d$a;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_9

    .line 311
    const-string v1, "found#wifi"

    goto/16 :goto_1

    .line 313
    :cond_9
    const-string v1, "no found"

    goto/16 :goto_1

    .line 315
    :cond_a
    if-eqz p1, :cond_15

    const-string v0, "#cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_15

    .line 316
    const-string v0, "mem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 317
    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 318
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 319
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/d$a;

    .line 322
    :goto_6
    if-eqz v0, :cond_b

    .line 323
    const-string v1, "found#cell"

    goto/16 :goto_1

    .line 325
    :cond_b
    const-string v1, "no found"

    goto/16 :goto_1

    .line 368
    :cond_c
    :try_start_3
    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 369
    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 370
    if-eqz v0, :cond_d

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 371
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 373
    :cond_d
    if-eqz v0, :cond_e

    .line 374
    iget-object v3, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v3, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move-object v0, v1

    :goto_7
    move-object v3, v0

    .line 383
    goto/16 :goto_3

    .line 378
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v3, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto :goto_7

    .line 393
    :catch_0
    move-exception v1

    move-object v1, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v1, v3

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_5

    .line 389
    :catch_3
    move-exception v1

    move-object v1, v0

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v1, v3

    goto/16 :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_5

    .line 385
    :catch_6
    move-exception v1

    move-object v1, v0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    move-object v1, v3

    goto/16 :goto_5

    :catch_8
    move-exception v0

    goto/16 :goto_5

    :cond_10
    move-object v0, v3

    goto :goto_7

    :cond_11
    move-object v3, v0

    goto/16 :goto_4

    :cond_12
    move-object v1, v2

    goto/16 :goto_2

    :cond_13
    move-object v1, v0

    goto/16 :goto_5

    :cond_14
    move-object v0, v2

    goto :goto_6

    :cond_15
    move-object v0, v2

    goto/16 :goto_1
.end method

.method a()V
    .locals 2

    .prologue
    .line 433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/d;->d:J

    .line 434
    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 438
    return-void
.end method

.method a(Ljava/lang/String;Lcom/aps/c;Ljava/lang/StringBuilder;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 113
    sget-boolean v0, Lcom/aps/g;->l:Z

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/aps/d;->a()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/aps/d;->a(Ljava/lang/String;Lcom/aps/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p2}, Lcom/aps/c;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    if-eqz p1, :cond_f

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 138
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p2}, Lcom/aps/c;->i()F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_e

    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 149
    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 150
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 149
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_3
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 184
    :cond_4
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/d;->d:J

    .line 185
    new-instance v1, Lcom/aps/d$a;

    invoke-direct {v1}, Lcom/aps/d$a;-><init>()V

    .line 186
    const-string v0, "mem"

    invoke-virtual {p2, v0}, Lcom/aps/c;->g(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1, p2}, Lcom/aps/d$a;->a(Lcom/aps/c;)V

    .line 188
    if-eqz p3, :cond_5

    .line 189
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aps/d$a;->a(Ljava/lang/String;)V

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_6

    .line 193
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    .line 195
    :cond_6
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 200
    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    if-eqz v0, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 202
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 204
    :cond_7
    if-eqz v0, :cond_8

    .line 205
    iget-object v1, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_8
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/aps/d;->a:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 216
    const-string v0, "MD5"

    invoke-static {}, Lcom/amap/api/location/core/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/location/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/d;->a:Ljava/lang/String;

    .line 218
    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 219
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "cell#"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    :cond_b
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Lcom/aps/d;->c:Lcom/aps/r;

    if-eqz v1, :cond_14

    .line 223
    iget-object v0, p0, Lcom/aps/d;->c:Lcom/aps/r;

    invoke-virtual {v0, p1}, Lcom/aps/r;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v0

    .line 225
    :goto_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/aps/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/location/core/e;->d([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-virtual {p2}, Lcom/aps/c;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/aps/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/location/core/e;->d([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 229
    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lcom/aps/d;->c:Lcom/aps/r;

    if-eqz v1, :cond_d

    .line 232
    iget-object v1, p0, Lcom/aps/d;->c:Lcom/aps/r;

    invoke-virtual {v1, p1, v0}, Lcom/aps/r;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :cond_d
    :goto_4
    const-string v0, ""

    .line 269
    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 160
    :cond_e
    invoke-virtual {p2}, Lcom/aps/c;->i()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    goto/16 :goto_0

    .line 169
    :cond_f
    if-eqz p1, :cond_4

    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    goto/16 :goto_0

    .line 209
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/aps/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 235
    :cond_11
    :try_start_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 237
    const/4 v3, 0x1

    .line 238
    :cond_12
    if-eqz v7, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 239
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v8, p0, Lcom/aps/d;->a:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/amap/api/location/core/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v8}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 243
    if-eqz v1, :cond_12

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/aps/d;->c:Lcom/aps/r;

    invoke-virtual {v0, p1, v4}, Lcom/aps/r;->b(Ljava/lang/String;Ljava/util/Map;)V

    move v0, v2

    .line 251
    :goto_5
    if-eqz v0, :cond_d

    .line 252
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/aps/d;->c:Lcom/aps/r;

    invoke-virtual {v0, p1, v4}, Lcom/aps/r;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 256
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 260
    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_13
    move v0, v3

    goto :goto_5

    :cond_14
    move-object v4, v0

    goto/16 :goto_3
.end method

.method a(Ljava/lang/String;Lcom/aps/c;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 411
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    const/4 v1, 0x1

    .line 415
    const-string v2, "#network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 417
    invoke-virtual {p2}, Lcom/aps/c;->g()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/aps/d;->c:Lcom/aps/r;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/aps/d;->c:Lcom/aps/r;

    invoke-virtual {v0}, Lcom/aps/r;->a()V

    .line 444
    :cond_0
    return-void
.end method
