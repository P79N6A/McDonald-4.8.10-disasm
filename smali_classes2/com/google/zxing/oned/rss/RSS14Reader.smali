.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 40
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 42
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 43
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    .line 38
    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    .line 40
    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    .line 41
    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    .line 42
    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    .line 43
    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    .line 45
    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 63
    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 5
    .param p1, "pair"    # Lcom/google/zxing/oned/rss/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "possiblePairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/Pair;>;"
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "found":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/Pair;

    .line 95
    .local v1, "other":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 96
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 97
    const/4 v0, 0x1

    .line 101
    .end local v1    # "other":Lcom/google/zxing/oned/rss/Pair;
    :cond_3
    if-nez v0, :cond_0

    .line 102
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 13
    .param p1, "outsideChar"    # Z
    .param p2, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 359
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v8

    .line 360
    .local v8, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v3

    .line 362
    .local v3, "evenSum":I
    const/4 v5, 0x0

    .line 363
    .local v5, "incrementOdd":Z
    const/4 v1, 0x0

    .line 364
    .local v1, "decrementOdd":Z
    const/4 v4, 0x0

    .line 365
    .local v4, "incrementEven":Z
    const/4 v0, 0x0

    .line 367
    .local v0, "decrementEven":Z
    if-eqz p1, :cond_5

    .line 368
    if-le v8, v12, :cond_3

    .line 369
    const/4 v1, 0x1

    .line 373
    :cond_0
    :goto_0
    if-le v3, v12, :cond_4

    .line 374
    const/4 v0, 0x1

    .line 391
    :cond_1
    :goto_1
    add-int v10, v8, v3

    sub-int v6, v10, p2

    .line 392
    .local v6, "mismatch":I
    and-int/lit8 v11, v8, 0x1

    if-eqz p1, :cond_9

    move v10, v9

    :goto_2
    if-ne v11, v10, :cond_a

    move v7, v9

    .line 393
    .local v7, "oddParityBad":Z
    :goto_3
    and-int/lit8 v10, v3, 0x1

    if-ne v10, v9, :cond_2

    move v2, v9

    .line 406
    .local v2, "evenParityBad":Z
    :cond_2
    if-ne v6, v9, :cond_f

    .line 407
    if-eqz v7, :cond_d

    .line 408
    if-eqz v2, :cond_b

    .line 409
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 370
    .end local v2    # "evenParityBad":Z
    .end local v6    # "mismatch":I
    .end local v7    # "oddParityBad":Z
    :cond_3
    if-ge v8, v11, :cond_0

    .line 371
    const/4 v5, 0x1

    goto :goto_0

    .line 375
    :cond_4
    if-ge v3, v11, :cond_1

    .line 376
    const/4 v4, 0x1

    goto :goto_1

    .line 379
    :cond_5
    const/16 v10, 0xb

    if-le v8, v10, :cond_7

    .line 380
    const/4 v1, 0x1

    .line 384
    :cond_6
    :goto_4
    const/16 v10, 0xa

    if-le v3, v10, :cond_8

    .line 385
    const/4 v0, 0x1

    goto :goto_1

    .line 381
    :cond_7
    const/4 v10, 0x5

    if-ge v8, v10, :cond_6

    .line 382
    const/4 v5, 0x1

    goto :goto_4

    .line 386
    :cond_8
    if-ge v3, v11, :cond_1

    .line 387
    const/4 v4, 0x1

    goto :goto_1

    .restart local v6    # "mismatch":I
    :cond_9
    move v10, v2

    .line 392
    goto :goto_2

    :cond_a
    move v7, v2

    goto :goto_3

    .line 411
    .restart local v2    # "evenParityBad":Z
    .restart local v7    # "oddParityBad":Z
    :cond_b
    const/4 v1, 0x1

    .line 453
    :cond_c
    :goto_5
    if-eqz v5, :cond_19

    .line 454
    if-eqz v1, :cond_18

    .line 455
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 413
    :cond_d
    if-nez v2, :cond_e

    .line 414
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 416
    :cond_e
    const/4 v0, 0x1

    goto :goto_5

    .line 418
    :cond_f
    const/4 v9, -0x1

    if-ne v6, v9, :cond_13

    .line 419
    if-eqz v7, :cond_11

    .line 420
    if-eqz v2, :cond_10

    .line 421
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 423
    :cond_10
    const/4 v5, 0x1

    goto :goto_5

    .line 425
    :cond_11
    if-nez v2, :cond_12

    .line 426
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 428
    :cond_12
    const/4 v4, 0x1

    goto :goto_5

    .line 430
    :cond_13
    if-nez v6, :cond_17

    .line 431
    if-eqz v7, :cond_16

    .line 432
    if-nez v2, :cond_14

    .line 433
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 436
    :cond_14
    if-ge v8, v3, :cond_15

    .line 437
    const/4 v5, 0x1

    .line 438
    const/4 v0, 0x1

    goto :goto_5

    .line 440
    :cond_15
    const/4 v1, 0x1

    .line 441
    const/4 v4, 0x1

    goto :goto_5

    .line 444
    :cond_16
    if-eqz v2, :cond_c

    .line 445
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 450
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 457
    :cond_18
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 459
    :cond_19
    if-eqz v1, :cond_1a

    .line 460
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 462
    :cond_1a
    if-eqz v4, :cond_1c

    .line 463
    if-eqz v0, :cond_1b

    .line 464
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 466
    :cond_1b
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 468
    :cond_1c
    if-eqz v0, :cond_1d

    .line 469
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 472
    :cond_1d
    return-void
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 4
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x4f

    .line 150
    .local v0, "checkValue":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v3

    add-int v1, v2, v3

    .line 151
    .local v1, "targetCheckValue":I
    const/16 v2, 0x48

    if-le v1, v2, :cond_0

    .line 152
    add-int/lit8 v1, v1, -0x1

    .line 154
    :cond_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 155
    add-int/lit8 v1, v1, -0x1

    .line 157
    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 14
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 113
    const-wide/32 v8, 0x453af5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v7

    int-to-long v10, v7

    mul-long/2addr v8, v10

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 114
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "text":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0xe

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v3, v7, 0xd

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 118
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "checkDigit":I
    const/4 v3, 0x0

    :goto_1
    const/16 v7, 0xd

    if-ge v3, v7, :cond_2

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    add-int/lit8 v2, v7, -0x30

    .line 125
    .local v2, "digit":I
    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_1

    mul-int/lit8 v2, v2, 0x3

    .end local v2    # "digit":I
    :cond_1
    add-int/2addr v1, v2

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :cond_2
    rem-int/lit8 v7, v1, 0xa

    rsub-int/lit8 v1, v7, 0xa

    .line 128
    const/16 v7, 0xa

    if-ne v1, v7, :cond_3

    .line 129
    const/4 v1, 0x0

    .line 131
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 134
    .local v4, "leftPoints":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 135
    .local v5, "rightPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/Result;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/google/zxing/ResultPoint;

    aget-object v11, v4, v12

    aput-object v11, v10, v12

    aget-object v11, v4, v13

    aput-object v11, v10, v13

    const/4 v11, 0x2

    aget-object v12, v5, v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aget-object v12, v5, v13

    aput-object v12, v10, v11

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 135
    return-object v7
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 31
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "outsideChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v5

    .line 191
    .local v5, "counters":[I
    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 192
    const/16 v29, 0x1

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 193
    const/16 v29, 0x2

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 194
    const/16 v29, 0x3

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 195
    const/16 v29, 0x4

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 196
    const/16 v29, 0x5

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 197
    const/16 v29, 0x6

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 198
    const/16 v29, 0x7

    const/16 v30, 0x0

    aput v30, v5, v29

    .line 200
    if-eqz p3, :cond_2

    .line 201
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 212
    :cond_0
    if-eqz p3, :cond_3

    const/16 v16, 0x10

    .line 213
    .local v16, "numModules":I
    :goto_0
    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v6, v29, v30

    .line 215
    .local v6, "elementWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v18

    .line 216
    .local v18, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v8

    .line 217
    .local v8, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v19

    .line 218
    .local v19, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v9

    .line 220
    .local v9, "evenRoundingErrors":[F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v14, v0, :cond_6

    .line 221
    aget v29, v5, v14

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v29, v6

    .line 222
    .local v28, "value":F
    const/high16 v29, 0x3f000000    # 0.5f

    add-float v29, v29, v28

    move/from16 v0, v29

    float-to-int v4, v0

    .line 223
    .local v4, "count":I
    if-gtz v4, :cond_4

    .line 224
    const/4 v4, 0x1

    .line 228
    :cond_1
    :goto_2
    div-int/lit8 v22, v14, 0x2

    .line 229
    .local v22, "offset":I
    and-int/lit8 v29, v14, 0x1

    if-nez v29, :cond_5

    .line 230
    aput v4, v18, v22

    .line 231
    int-to-float v0, v4

    move/from16 v29, v0

    sub-float v29, v28, v29

    aput v29, v19, v22

    .line 220
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 203
    .end local v4    # "count":I
    .end local v6    # "elementWidth":F
    .end local v8    # "evenCounts":[I
    .end local v9    # "evenRoundingErrors":[F
    .end local v14    # "i":I
    .end local v16    # "numModules":I
    .end local v18    # "oddCounts":[I
    .end local v19    # "oddRoundingErrors":[F
    .end local v22    # "offset":I
    .end local v28    # "value":F
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 205
    const/4 v14, 0x0

    .restart local v14    # "i":I
    array-length v0, v5

    move/from16 v29, v0

    add-int/lit8 v15, v29, -0x1

    .local v15, "j":I
    :goto_4
    if-ge v14, v15, :cond_0

    .line 206
    aget v25, v5, v14

    .line 207
    .local v25, "temp":I
    aget v29, v5, v15

    aput v29, v5, v14

    .line 208
    aput v25, v5, v15

    .line 205
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 212
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v25    # "temp":I
    :cond_3
    const/16 v16, 0xf

    goto :goto_0

    .line 225
    .restart local v4    # "count":I
    .restart local v6    # "elementWidth":F
    .restart local v8    # "evenCounts":[I
    .restart local v9    # "evenRoundingErrors":[F
    .restart local v14    # "i":I
    .restart local v16    # "numModules":I
    .restart local v18    # "oddCounts":[I
    .restart local v19    # "oddRoundingErrors":[F
    .restart local v28    # "value":F
    :cond_4
    const/16 v29, 0x8

    move/from16 v0, v29

    if-le v4, v0, :cond_1

    .line 226
    const/16 v4, 0x8

    goto :goto_2

    .line 233
    .restart local v22    # "offset":I
    :cond_5
    aput v4, v8, v22

    .line 234
    int-to-float v0, v4

    move/from16 v29, v0

    sub-float v29, v28, v29

    aput v29, v9, v22

    goto :goto_3

    .line 238
    .end local v4    # "count":I
    .end local v22    # "offset":I
    .end local v28    # "value":F
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 240
    const/16 v20, 0x0

    .line 241
    .local v20, "oddSum":I
    const/16 v17, 0x0

    .line 242
    .local v17, "oddChecksumPortion":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v14, v29, -0x1

    :goto_5
    if-ltz v14, :cond_7

    .line 243
    mul-int/lit8 v29, v17, 0x9

    .line 244
    aget v30, v18, v14

    add-int v17, v29, v30

    .line 245
    aget v29, v18, v14

    add-int v20, v20, v29

    .line 242
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 247
    :cond_7
    const/4 v7, 0x0

    .line 248
    .local v7, "evenChecksumPortion":I
    const/4 v10, 0x0

    .line 249
    .local v10, "evenSum":I
    array-length v0, v8

    move/from16 v29, v0

    add-int/lit8 v14, v29, -0x1

    :goto_6
    if-ltz v14, :cond_8

    .line 250
    mul-int/lit8 v29, v7, 0x9

    .line 251
    aget v30, v8, v14

    add-int v7, v29, v30

    .line 252
    aget v29, v8, v14

    add-int v10, v10, v29

    .line 249
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 254
    :cond_8
    mul-int/lit8 v29, v7, 0x3

    add-int v3, v17, v29

    .line 256
    .local v3, "checksumPortion":I
    if-eqz p3, :cond_b

    .line 257
    and-int/lit8 v29, v20, 0x1

    if-nez v29, :cond_9

    const/16 v29, 0xc

    move/from16 v0, v20

    move/from16 v1, v29

    if-gt v0, v1, :cond_9

    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 258
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v29

    throw v29

    .line 260
    :cond_a
    rsub-int/lit8 v29, v20, 0xc

    div-int/lit8 v13, v29, 0x2

    .line 261
    .local v13, "group":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v21, v29, v13

    .line 262
    .local v21, "oddWidest":I
    rsub-int/lit8 v11, v21, 0x9

    .line 263
    .local v11, "evenWidest":I
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    .line 264
    .local v27, "vOdd":I
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 265
    .local v26, "vEven":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v23, v29, v13

    .line 266
    .local v23, "tEven":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v12, v29, v13

    .line 267
    .local v12, "gSum":I
    new-instance v29, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v30, v27, v23

    add-int v30, v30, v26

    add-int v30, v30, v12

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    .line 279
    .end local v23    # "tEven":I
    :goto_7
    return-object v29

    .line 269
    .end local v11    # "evenWidest":I
    .end local v12    # "gSum":I
    .end local v13    # "group":I
    .end local v21    # "oddWidest":I
    .end local v26    # "vEven":I
    .end local v27    # "vOdd":I
    :cond_b
    and-int/lit8 v29, v10, 0x1

    if-nez v29, :cond_c

    const/16 v29, 0xa

    move/from16 v0, v29

    if-gt v10, v0, :cond_c

    const/16 v29, 0x4

    move/from16 v0, v29

    if-ge v10, v0, :cond_d

    .line 270
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v29

    throw v29

    .line 272
    :cond_d
    rsub-int/lit8 v29, v10, 0xa

    div-int/lit8 v13, v29, 0x2

    .line 273
    .restart local v13    # "group":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v21, v29, v13

    .line 274
    .restart local v21    # "oddWidest":I
    rsub-int/lit8 v11, v21, 0x9

    .line 275
    .restart local v11    # "evenWidest":I
    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    .line 276
    .restart local v27    # "vOdd":I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 277
    .restart local v26    # "vEven":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v24, v29, v13

    .line 278
    .local v24, "tOdd":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v12, v29, v13

    .line 279
    .restart local v12    # "gSum":I
    new-instance v29, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v30, v26, v24

    add-int v30, v30, v27

    add-int v30, v30, v12

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    goto :goto_7
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "right"    # Z
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    .prologue
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v7, 0x0

    .line 162
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1, v6, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I

    move-result-object v5

    .line 163
    .local v5, "startEnd":[I
    invoke-direct {p0, p1, p3, p2, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    .line 165
    .local v3, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez p4, :cond_2

    move-object v4, v7

    .line 168
    .local v4, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_0
    if-eqz v4, :cond_1

    .line 169
    const/4 v6, 0x0

    aget v6, v5, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v0, v6, v8

    .line 170
    .local v0, "center":F
    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    sub-float v0, v6, v0

    .line 174
    :cond_0
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v6, v0, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v4, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 177
    .end local v0    # "center":F
    :cond_1
    const/4 v6, 0x1

    invoke-direct {p0, p1, v3, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    .line 178
    .local v2, "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    const/4 v6, 0x0

    invoke-direct {p0, p1, v3, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v1

    .line 179
    .local v1, "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v6, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x63d

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    add-int/2addr v8, v9

    .line 180
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    invoke-direct {v6, v8, v9, v3}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V

    .line 183
    .end local v1    # "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v2    # "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v3    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v4    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v5    # "startEnd":[I
    :goto_1
    return-object v6

    .line 165
    .restart local v3    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .restart local v5    # "startEnd":[I
    :cond_2
    sget-object v6, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 166
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/ResultPointCallback;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    goto :goto_0

    .line 183
    .end local v3    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v5    # "startEnd":[I
    :catch_0
    move-exception v6

    move-object v6, v7

    goto :goto_1
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I
    .locals 12
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowOffset"    # I
    .param p3, "rightFinderPattern"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v1

    .line 288
    .local v1, "counters":[I
    aput v7, v1, v7

    .line 289
    aput v7, v1, v6

    .line 290
    aput v7, v1, v10

    .line 291
    aput v7, v1, v11

    .line 293
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 294
    .local v4, "width":I
    const/4 v2, 0x0

    .line 295
    .local v2, "isWhite":Z
    :goto_0
    if-ge p2, v4, :cond_1

    .line 296
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_0

    move v2, v6

    .line 297
    :goto_1
    if-eq p3, v2, :cond_1

    .line 301
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    move v2, v7

    .line 296
    goto :goto_1

    .line 304
    :cond_1
    const/4 v0, 0x0

    .line 305
    .local v0, "counterPosition":I
    move v3, p2

    .line 306
    .local v3, "patternStart":I
    move v5, p2

    .local v5, "x":I
    :goto_2
    if-ge v5, v4, :cond_6

    .line 307
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_2

    .line 308
    aget v8, v1, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v0

    .line 306
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 310
    :cond_2
    if-ne v0, v11, :cond_4

    .line 311
    invoke-static {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 312
    new-array v8, v10, [I

    aput v3, v8, v7

    aput v5, v8, v6

    return-object v8

    .line 314
    :cond_3
    aget v8, v1, v7

    aget v9, v1, v6

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 315
    aget v8, v1, v10

    aput v8, v1, v7

    .line 316
    aget v8, v1, v11

    aput v8, v1, v6

    .line 317
    aput v7, v1, v10

    .line 318
    aput v7, v1, v11

    .line 319
    add-int/lit8 v0, v0, -0x1

    .line 323
    :goto_4
    aput v6, v1, v0

    .line 324
    if-nez v2, :cond_5

    move v2, v6

    :goto_5
    goto :goto_3

    .line 321
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v2, v7

    .line 324
    goto :goto_5

    .line 327
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "right"    # Z
    .param p4, "startEnd"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 334
    aget v0, p4, v5

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    .line 335
    .local v9, "firstIsBlack":Z
    aget v0, p4, v5

    add-int/lit8 v8, v0, -0x1

    .line 337
    .local v8, "firstElementStart":I
    :goto_0
    if-ltz v8, :cond_0

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    xor-int/2addr v0, v9

    if-eqz v0, :cond_0

    .line 338
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 340
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 341
    aget v0, p4, v5

    sub-int v7, v0, v8

    .line 343
    .local v7, "firstCounter":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v6

    .line 344
    .local v6, "counters":[I
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    aput v7, v6, v5

    .line 346
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v1

    .line 347
    .local v1, "value":I
    move v3, v8

    .line 348
    .local v3, "start":I
    aget v4, p4, v10

    .line 349
    .local v4, "end":I
    if-eqz p3, :cond_1

    .line 351
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v3

    .line 352
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    .line 354
    :cond_1
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v8, v2, v5

    aget v5, p4, v10

    aput v5, v2, v10

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 8
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v7, 0x1

    .line 69
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v1

    .line 70
    .local v1, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v4, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 71
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 72
    invoke-direct {p0, p2, v7, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v3

    .line 73
    .local v3, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 74
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 75
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/Pair;

    .line 76
    .local v0, "left":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 77
    iget-object v5, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/Pair;

    .line 78
    .local v2, "right":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 79
    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 80
    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v4

    return-object v4

    .line 86
    .end local v0    # "left":Lcom/google/zxing/oned/rss/Pair;
    .end local v2    # "right":Lcom/google/zxing/oned/rss/Pair;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    return-void
.end method
