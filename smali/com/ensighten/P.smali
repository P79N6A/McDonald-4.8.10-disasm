.class public Lcom/ensighten/P;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/P$c;,
        Lcom/ensighten/P$b;,
        Lcom/ensighten/P$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/ensighten/P;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ensighten/P;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 160
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v2, 0x2

    .line 2202
    array-length v4, p0

    .line 2218
    new-instance v5, Lcom/ensighten/P$c;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/ensighten/P$c;-><init>(I[B)V

    .line 2221
    div-int/lit8 v2, v4, 0x3

    mul-int/lit8 v2, v2, 0x4

    .line 2224
    iget-boolean v6, v5, Lcom/ensighten/P$c;->c:Z

    if-eqz v6, :cond_1

    .line 2225
    rem-int/lit8 v6, v4, 0x3

    if-lez v6, :cond_0

    .line 2226
    add-int/lit8 v2, v2, 0x4

    .line 2242
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v6, v5, Lcom/ensighten/P$c;->d:Z

    if-eqz v6, :cond_4

    if-lez v4, :cond_4

    .line 2243
    add-int/lit8 v6, v4, -0x1

    div-int/lit8 v6, v6, 0x39

    add-int/lit8 v6, v6, 0x1

    iget-boolean v7, v5, Lcom/ensighten/P$c;->e:Z

    if-eqz v7, :cond_2

    :goto_1
    mul-int/2addr v0, v6

    add-int/2addr v0, v2

    .line 2247
    :goto_2
    new-array v1, v0, [B

    iput-object v1, v5, Lcom/ensighten/P$c;->a:[B

    .line 2248
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v5, p0, v1, v4, v2}, Lcom/ensighten/P$c;->a([BIIZ)Z

    .line 2250
    sget-boolean v1, Lcom/ensighten/P;->a:Z

    if-nez v1, :cond_3

    iget v1, v5, Lcom/ensighten/P$c;->b:I

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2229
    :cond_1
    :try_start_1
    rem-int/lit8 v6, v4, 0x3

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 2233
    :pswitch_1
    add-int/lit8 v2, v2, 0x2

    .line 2234
    goto :goto_0

    .line 2236
    :pswitch_2
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2243
    goto :goto_1

    .line 2252
    :cond_3
    iget-object v0, v5, Lcom/ensighten/P$c;->a:[B

    .line 160
    const-string v1, "US-ASCII"

    invoke-direct {v3, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :cond_4
    move v0, v2

    goto :goto_2

    .line 2229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;I)[B
    .locals 12

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v0, 0x0

    .line 1110
    array-length v1, v5

    .line 1131
    new-instance v6, Lcom/ensighten/P$b;

    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v6, v0, v2}, Lcom/ensighten/P$b;-><init>(I[B)V

    .line 1133
    const/4 v3, 0x0

    .line 1369
    iget v0, v6, Lcom/ensighten/P$b;->d:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 1133
    :goto_0
    if-nez v0, :cond_c

    .line 1134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :cond_0
    add-int v7, v1, v3

    .line 1379
    iget v2, v6, Lcom/ensighten/P$b;->d:I

    .line 1380
    iget v1, v6, Lcom/ensighten/P$b;->e:I

    .line 1381
    const/4 v0, 0x0

    .line 1382
    iget-object v8, v6, Lcom/ensighten/P$b;->a:[B

    .line 1383
    iget-object v9, v6, Lcom/ensighten/P$b;->c:[I

    move v11, v2

    move v2, v3

    move v3, v11

    .line 1385
    :goto_1
    if-ge v2, v7, :cond_b

    .line 1400
    if-nez v3, :cond_2

    .line 1401
    :goto_2
    add-int/lit8 v4, v2, 0x4

    if-gt v4, v7, :cond_1

    aget-byte v1, v5, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v9, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v9, v4

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v9, v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v9, v4

    or-int/2addr v1, v4

    if-ltz v1, :cond_1

    .line 1406
    add-int/lit8 v4, v0, 0x2

    int-to-byte v10, v1

    aput-byte v10, v8, v4

    .line 1407
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v10, v1, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v4

    .line 1408
    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v8, v0

    .line 1409
    add-int/lit8 v0, v0, 0x3

    .line 1410
    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 1412
    :cond_1
    if-ge v2, v7, :cond_b

    .line 1420
    :cond_2
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v9, v2

    .line 1422
    packed-switch v3, :pswitch_data_0

    :cond_3
    move v2, v4

    .line 1496
    goto :goto_1

    .line 1424
    :pswitch_0
    if-ltz v2, :cond_4

    .line 1426
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    move v2, v4

    goto :goto_1

    .line 1427
    :cond_4
    const/4 v10, -0x1

    if-eq v2, v10, :cond_3

    .line 1428
    const/4 v0, 0x6

    iput v0, v6, Lcom/ensighten/P$b;->d:I

    .line 1429
    const/4 v0, 0x0

    goto :goto_0

    .line 1434
    :pswitch_1
    if-ltz v2, :cond_5

    .line 1435
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 1436
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 1437
    :cond_5
    const/4 v10, -0x1

    if-eq v2, v10, :cond_3

    .line 1438
    const/4 v0, 0x6

    iput v0, v6, Lcom/ensighten/P$b;->d:I

    .line 1439
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1444
    :pswitch_2
    if-ltz v2, :cond_6

    .line 1445
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 1446
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto/16 :goto_1

    .line 1447
    :cond_6
    const/4 v10, -0x2

    if-ne v2, v10, :cond_7

    .line 1450
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v8, v0

    .line 1451
    const/4 v0, 0x4

    move v3, v0

    move v0, v2

    move v2, v4

    goto/16 :goto_1

    .line 1452
    :cond_7
    const/4 v10, -0x1

    if-eq v2, v10, :cond_3

    .line 1453
    const/4 v0, 0x6

    iput v0, v6, Lcom/ensighten/P$b;->d:I

    .line 1454
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1459
    :pswitch_3
    if-ltz v2, :cond_8

    .line 1461
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 1462
    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v8, v2

    .line 1463
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    .line 1464
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 1465
    add-int/lit8 v0, v0, 0x3

    .line 1466
    const/4 v2, 0x0

    move v3, v2

    move v2, v4

    goto/16 :goto_1

    .line 1467
    :cond_8
    const/4 v10, -0x2

    if-ne v2, v10, :cond_9

    .line 1470
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    .line 1471
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 1472
    add-int/lit8 v0, v0, 0x2

    .line 1473
    const/4 v2, 0x5

    move v3, v2

    move v2, v4

    goto/16 :goto_1

    .line 1474
    :cond_9
    const/4 v10, -0x1

    if-eq v2, v10, :cond_3

    .line 1475
    const/4 v0, 0x6

    iput v0, v6, Lcom/ensighten/P$b;->d:I

    .line 1476
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1481
    :pswitch_4
    const/4 v10, -0x2

    if-ne v2, v10, :cond_a

    .line 1482
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto/16 :goto_1

    .line 1483
    :cond_a
    const/4 v10, -0x1

    if-eq v2, v10, :cond_3

    .line 1484
    const/4 v0, 0x6

    iput v0, v6, Lcom/ensighten/P$b;->d:I

    .line 1485
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1490
    :pswitch_5
    const/4 v10, -0x1

    if-eq v2, v10, :cond_3

    .line 1491
    const/4 v0, 0x6

    iput v0, v6, Lcom/ensighten/P$b;->d:I

    .line 1492
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    move v2, v1

    .line 1510
    packed-switch v3, :pswitch_data_1

    .line 1540
    :goto_3
    :pswitch_6
    iput v3, v6, Lcom/ensighten/P$b;->d:I

    .line 1541
    iput v0, v6, Lcom/ensighten/P$b;->b:I

    .line 1542
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1517
    :pswitch_7
    const/4 v0, 0x6

    iput v0, v6, Lcom/ensighten/P$b;->d:I

    .line 1518
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1522
    :pswitch_8
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    move v0, v1

    .line 1523
    goto :goto_3

    .line 1527
    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v8, v0

    .line 1528
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v8, v1

    goto :goto_3

    .line 1532
    :pswitch_a
    const/4 v0, 0x6

    iput v0, v6, Lcom/ensighten/P$b;->d:I

    .line 1533
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1138
    :cond_c
    iget v0, v6, Lcom/ensighten/P$b;->b:I

    iget-object v1, v6, Lcom/ensighten/P$b;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_d

    .line 1139
    iget-object v0, v6, Lcom/ensighten/P$b;->a:[B

    :goto_4
    return-object v0

    .line 1144
    :cond_d
    iget v0, v6, Lcom/ensighten/P$b;->b:I

    new-array v0, v0, [B

    .line 1145
    iget-object v1, v6, Lcom/ensighten/P$b;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v6, Lcom/ensighten/P$b;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 1422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1510
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
