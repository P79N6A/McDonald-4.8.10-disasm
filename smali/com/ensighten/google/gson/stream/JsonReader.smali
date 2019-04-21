.class public Lcom/ensighten/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/ensighten/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 234
    new-instance v0, Lcom/ensighten/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/ensighten/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/ensighten/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/ensighten/google/gson/internal/JsonReaderInternalAccess;

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    .line 274
    iput-boolean v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lenient:Z

    .line 275
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 276
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    .line 277
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    .line 278
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    .line 279
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 299
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    .line 300
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    .line 309
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 310
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    .line 313
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 320
    if-nez p1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 324
    return-void
.end method

.method static synthetic access$000(Lcom/ensighten/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/ensighten/google/gson/stream/JsonReader;

    .prologue
    .line 191
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    return v0
.end method

.method static synthetic access$002(Lcom/ensighten/google/gson/stream/JsonReader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .param p1, "x1"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    return p1
.end method

.method static synthetic access$100(Lcom/ensighten/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/ensighten/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/ensighten/google/gson/stream/JsonReader;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/ensighten/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/ensighten/google/gson/stream/JsonReader;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1452
    iget-boolean v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 1453
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1455
    :cond_0
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1613
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1614
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1616
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/ensighten/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/ensighten/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1628
    :cond_0
    :goto_0
    return-void

    .line 1620
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/ensighten/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1621
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/ensighten/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 1620
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1627
    :cond_2
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/ensighten/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private doPeek()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 496
    iget-object v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    iget v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    .line 497
    if-ne v4, v2, :cond_3

    .line 498
    iget-object v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    .line 583
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    .line 584
    sparse-switch v5, :sswitch_data_0

    .line 613
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 616
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    if-ne v0, v2, :cond_1

    .line 617
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 620
    :cond_1
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v0

    .line 621
    if-eqz v0, :cond_14

    .line 635
    :cond_2
    :goto_1
    return v0

    .line 499
    :cond_3
    if-ne v4, v1, :cond_4

    .line 501
    invoke-direct {p0, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    .line 502
    sparse-switch v5, :sswitch_data_1

    .line 510
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 504
    :sswitch_1
    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 506
    :sswitch_2
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    .line 512
    :cond_4
    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    if-ne v4, v7, :cond_9

    .line 513
    :cond_5
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    iget v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    .line 515
    if-ne v4, v7, :cond_6

    .line 516
    invoke-direct {p0, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 517
    sparse-switch v0, :sswitch_data_2

    .line 525
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 519
    :sswitch_3
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    move v0, v1

    goto :goto_1

    .line 521
    :sswitch_4
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 528
    :cond_6
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 529
    sparse-switch v0, :sswitch_data_3

    .line 542
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 543
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 544
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 545
    const/16 v0, 0xe

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 531
    :sswitch_6
    const/16 v0, 0xd

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 533
    :sswitch_7
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 534
    const/16 v0, 0xc

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 536
    :sswitch_8
    if-eq v4, v7, :cond_7

    .line 537
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    move v0, v1

    goto :goto_1

    .line 539
    :cond_7
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 547
    :cond_8
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 550
    :cond_9
    if-ne v4, v0, :cond_b

    .line 551
    iget-object v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    .line 553
    invoke-direct {p0, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    .line 554
    packed-switch v5, :pswitch_data_0

    .line 564
    :pswitch_1
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 558
    :pswitch_2
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 559
    iget v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-lt v5, v6, :cond_a

    invoke-direct {p0, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_a
    iget-object v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_0

    .line 560
    iget v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    .line 566
    :cond_b
    const/4 v5, 0x6

    if-ne v4, v5, :cond_d

    .line 567
    iget-boolean v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v5, :cond_c

    .line 568
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 570
    :cond_c
    iget-object v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_0

    .line 571
    :cond_d
    if-ne v4, v3, :cond_f

    .line 572
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    .line 573
    const/4 v6, -0x1

    if-ne v5, v6, :cond_e

    .line 574
    const/16 v0, 0x11

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 576
    :cond_e
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 577
    iget v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    .line 579
    :cond_f
    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 580
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :sswitch_9
    if-ne v4, v2, :cond_10

    .line 587
    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 593
    :cond_10
    :sswitch_a
    if-eq v4, v2, :cond_11

    if-ne v4, v1, :cond_12

    .line 594
    :cond_11
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 595
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 596
    iput v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    move v0, v3

    goto/16 :goto_1

    .line 598
    :cond_12
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 601
    :sswitch_b
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 602
    const/16 v0, 0x8

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 604
    :sswitch_c
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    if-ne v0, v2, :cond_13

    .line 605
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 607
    :cond_13
    const/16 v0, 0x9

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 609
    :sswitch_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 611
    :sswitch_e
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    move v0, v2

    goto/16 :goto_1

    .line 625
    :cond_14
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peekNumber()I

    move-result v0

    .line 626
    if-nez v0, :cond_2

    .line 630
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-nez v0, :cond_15

    .line 631
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 634
    :cond_15
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 635
    const/16 v0, 0xa

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 584
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 502
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 517
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 529
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 554
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fillBuffer(I)Z
    .locals 6
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1319
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    .line 1320
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    .line 1321
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    if-eq v2, v3, :cond_3

    .line 1322
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    .line 1323
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1328
    :goto_0
    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1330
    :cond_0
    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    array-length v4, v1

    iget v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1331
    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    .line 1334
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-lez v2, :cond_1

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_1

    .line 1335
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1336
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    .line 1337
    add-int/lit8 p1, p1, 0x1

    .line 1340
    :cond_1
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-lt v2, p1, :cond_0

    .line 1341
    const/4 v0, 0x1

    .line 1344
    :cond_2
    return v0

    .line 1325
    :cond_3
    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    goto :goto_0
.end method

.method private getColumnNumber()I
    .locals 2

    .prologue
    .line 1352
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .locals 1

    .prologue
    .line 1348
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    sparse-switch p1, :sswitch_data_0

    .line 806
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 792
    :sswitch_0
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 804
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 786
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 5
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1370
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    .line 1371
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1372
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    .line 1374
    :goto_0
    if-ne v1, v0, :cond_0

    .line 1375
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1376
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1379
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1380
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    .line 1383
    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 1384
    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    .line 1385
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    .line 1386
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    move v1, v2

    .line 1387
    goto :goto_0

    .line 1388
    :cond_1
    const/16 v4, 0x20

    if-eq v1, v4, :cond_8

    const/16 v4, 0xd

    if-eq v1, v4, :cond_8

    const/16 v4, 0x9

    if-eq v1, v4, :cond_8

    .line 1392
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_4

    .line 1393
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1394
    if-ne v2, v0, :cond_2

    .line 1395
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1396
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    .line 1397
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1398
    if-nez v0, :cond_2

    move v0, v1

    .line 1447
    :goto_1
    return v0

    .line 1403
    :cond_2
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 1404
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v3, v0

    .line 1405
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 1425
    goto :goto_1

    .line 1408
    :sswitch_0
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1409
    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1410
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1412
    :cond_3
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v0, 0x2

    .line 1413
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    .line 1418
    :sswitch_1
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1419
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1420
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1421
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    .line 1427
    :cond_4
    const/16 v0, 0x23

    if-ne v1, v0, :cond_5

    .line 1428
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1434
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 1435
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1436
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1437
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    .line 1439
    :cond_5
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    move v0, v1

    .line 1440
    goto :goto_1

    .line 1443
    :cond_6
    if-eqz p1, :cond_7

    .line 1444
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "End of input at line "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :cond_7
    const/4 v0, -0x1

    goto :goto_1

    :cond_8
    move v1, v2

    goto/16 :goto_0

    .line 1405
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 7
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1031
    iget-object v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    .line 1032
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1034
    :cond_0
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1035
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    move v2, v0

    .line 1038
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1039
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v4, v2

    .line 1041
    if-ne v2, p1, :cond_1

    .line 1042
    iput v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1043
    sub-int v1, v3, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1044
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1045
    :cond_1
    const/16 v6, 0x5c

    if-ne v2, v6, :cond_2

    .line 1046
    iput v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1047
    sub-int v1, v3, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1048
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1050
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    move v2, v0

    .line 1051
    goto :goto_0

    .line 1052
    :cond_2
    const/16 v6, 0xa

    if-ne v2, v6, :cond_3

    .line 1053
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    .line 1054
    iput v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    :cond_3
    move v2, v3

    .line 1056
    goto :goto_0

    .line 1058
    :cond_4
    sub-int v1, v2, v0

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1059
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1060
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1071
    const/4 v0, 0x0

    move v1, v2

    .line 1076
    :goto_0
    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_1

    .line 1077
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1083
    :sswitch_0
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 1121
    :cond_0
    :goto_1
    :sswitch_1
    if-nez v0, :cond_4

    .line 1122
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1127
    :goto_2
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1128
    return-object v0

    .line 1100
    :cond_1
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1101
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1109
    :cond_2
    if-nez v0, :cond_3

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1112
    :cond_3
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1113
    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1115
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_1

    .line 1124
    :cond_4
    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0

    .line 1077
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private peekKeyword()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 640
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 644
    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    .line 645
    :cond_0
    const-string/jumbo v2, "true"

    .line 646
    const-string v1, "TRUE"

    .line 647
    const/4 v0, 0x5

    .line 661
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 662
    const/4 v4, 0x1

    :goto_1
    if-ge v4, v5, :cond_8

    .line 663
    iget v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v0, v3

    .line 679
    :goto_2
    return v0

    .line 648
    :cond_1
    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    .line 649
    :cond_2
    const-string v2, "false"

    .line 650
    const-string v1, "FALSE"

    .line 651
    const/4 v0, 0x6

    goto :goto_0

    .line 652
    :cond_3
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    .line 653
    :cond_4
    const-string v2, "null"

    .line 654
    const-string v1, "NULL"

    .line 655
    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    move v0, v3

    .line 657
    goto :goto_2

    .line 666
    :cond_6
    iget-object v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    .line 667
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    move v0, v3

    .line 668
    goto :goto_2

    .line 662
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 672
    :cond_8
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_9

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcom/ensighten/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v3

    .line 674
    goto :goto_2

    .line 678
    :cond_a
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 679
    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2
.end method

.method private peekNumber()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    iget-object v11, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    .line 685
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 686
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    .line 688
    const-wide/16 v6, 0x0

    .line 689
    const/4 v5, 0x0

    .line 690
    const/4 v4, 0x1

    .line 691
    const/4 v3, 0x0

    .line 693
    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    .line 697
    :goto_0
    add-int v2, v1, v10

    if-ne v2, v0, :cond_1

    .line 698
    array-length v0, v11

    if-ne v10, v0, :cond_0

    .line 701
    const/4 v0, 0x0

    .line 781
    :goto_1
    return v0

    .line 703
    :cond_0
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 706
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 707
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    .line 710
    :cond_1
    add-int v2, v1, v10

    aget-char v2, v11, v2

    .line 711
    sparse-switch v2, :sswitch_data_0

    .line 746
    const/16 v8, 0x30

    if-lt v2, v8, :cond_2

    const/16 v8, 0x39

    if-le v2, v8, :cond_9

    .line 747
    :cond_2
    invoke-direct {p0, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 750
    const/4 v0, 0x0

    goto :goto_1

    .line 713
    :sswitch_0
    if-nez v3, :cond_3

    .line 714
    const/4 v3, 0x1

    .line 715
    const/4 v2, 0x1

    move v14, v4

    move v4, v3

    move v3, v14

    .line 696
    :goto_2
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_0

    .line 717
    :cond_3
    const/4 v2, 0x5

    if-ne v3, v2, :cond_4

    .line 718
    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    .line 719
    goto :goto_2

    .line 721
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 724
    :sswitch_1
    const/4 v2, 0x5

    if-ne v3, v2, :cond_5

    .line 725
    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    .line 726
    goto :goto_2

    .line 728
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 732
    :sswitch_2
    const/4 v2, 0x2

    if-eq v3, v2, :cond_6

    const/4 v2, 0x4

    if-ne v3, v2, :cond_7

    .line 733
    :cond_6
    const/4 v2, 0x5

    move v3, v4

    move v4, v5

    .line 734
    goto :goto_2

    .line 736
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 739
    :sswitch_3
    const/4 v2, 0x2

    if-ne v3, v2, :cond_8

    .line 740
    const/4 v2, 0x3

    move v3, v4

    move v4, v5

    .line 741
    goto :goto_2

    .line 743
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 752
    :cond_9
    const/4 v8, 0x1

    if-eq v3, v8, :cond_a

    if-nez v3, :cond_b

    .line 753
    :cond_a
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    .line 754
    const/4 v2, 0x2

    move v3, v4

    move v4, v5

    goto :goto_2

    .line 755
    :cond_b
    const/4 v8, 0x2

    if-ne v3, v8, :cond_f

    .line 756
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_c

    .line 757
    const/4 v0, 0x0

    goto :goto_1

    .line 759
    :cond_c
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    .line 760
    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_d

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_e

    cmp-long v2, v8, v6

    if-gez v2, :cond_e

    :cond_d
    const/4 v2, 0x1

    :goto_3
    and-int/2addr v2, v4

    move v4, v5

    move-wide v6, v8

    move v14, v3

    move v3, v2

    move v2, v14

    .line 763
    goto :goto_2

    .line 760
    :cond_e
    const/4 v2, 0x0

    goto :goto_3

    .line 763
    :cond_f
    const/4 v2, 0x3

    if-ne v3, v2, :cond_10

    .line 764
    const/4 v2, 0x4

    move v3, v4

    move v4, v5

    goto :goto_2

    .line 765
    :cond_10
    const/4 v2, 0x5

    if-eq v3, v2, :cond_11

    const/4 v2, 0x6

    if-ne v3, v2, :cond_18

    .line 766
    :cond_11
    const/4 v2, 0x7

    move v3, v4

    move v4, v5

    goto :goto_2

    .line 772
    :cond_12
    const/4 v0, 0x2

    if-ne v3, v0, :cond_15

    if-eqz v4, :cond_15

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_13

    if-eqz v5, :cond_15

    .line 773
    :cond_13
    if-eqz v5, :cond_14

    :goto_4
    iput-wide v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedLong:J

    .line 774
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 775
    const/16 v0, 0xf

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 773
    :cond_14
    neg-long v6, v6

    goto :goto_4

    .line 776
    :cond_15
    const/4 v0, 0x2

    if-eq v3, v0, :cond_16

    const/4 v0, 0x4

    if-eq v3, v0, :cond_16

    const/4 v0, 0x7

    if-ne v3, v0, :cond_17

    .line 778
    :cond_16
    iput v10, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 779
    const/16 v0, 0x10

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 781
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_18
    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_2

    .line 711
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private push(I)V
    .locals 6
    .param p1, "newTop"    # I

    .prologue
    const/4 v5, 0x0

    .line 1299
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1300
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1301
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1302
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1303
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1304
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1305
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1306
    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    .line 1307
    iput-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1308
    iput-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    .line 1311
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1543
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1544
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1548
    sparse-switch v0, :sswitch_data_0

    .line 1595
    :goto_0
    return v0

    .line 1550
    :sswitch_0
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, v5}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1551
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1554
    :cond_1
    const/4 v1, 0x0

    .line 1555
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v2, :cond_5

    .line 1556
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    aget-char v3, v3, v1

    .line 1557
    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    .line 1558
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    .line 1559
    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 1555
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1560
    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-gt v3, v4, :cond_3

    .line 1561
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    .line 1562
    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_4

    .line 1563
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    .line 1565
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1568
    :cond_5
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1572
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1575
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1578
    :sswitch_3
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 1581
    :sswitch_4
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1584
    :sswitch_5
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 1587
    :sswitch_6
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    .line 1588
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    goto/16 :goto_0

    .line 1548
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .locals 5
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    .line 1135
    :cond_0
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1136
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    .line 1138
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1139
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 1140
    if-ne v1, p1, :cond_1

    .line 1141
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1142
    return-void

    .line 1143
    :cond_1
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_2

    .line 1144
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1145
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1146
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1147
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    .line 1148
    :cond_2
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    .line 1149
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    .line 1150
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    :cond_3
    move v1, v2

    .line 1152
    goto :goto_0

    .line 1153
    :cond_4
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1480
    :goto_0
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1482
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    .line 1483
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    .line 1480
    :cond_1
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1486
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1487
    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1486
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1491
    :cond_3
    const/4 v1, 0x1

    .line 1493
    :cond_4
    return v1
.end method

.method private skipToEndOfLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1463
    :goto_0
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1465
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1466
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineNumber:I

    .line 1467
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lineStart:I

    .line 1473
    :cond_1
    return-void

    .line 1469
    :cond_2
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1160
    :cond_0
    const/4 v0, 0x0

    .line 1161
    :goto_0
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1

    .line 1162
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1168
    :sswitch_0
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->checkLenient()V

    .line 1180
    :sswitch_1
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1186
    :goto_1
    return-void

    .line 1184
    :cond_1
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1185
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1162
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1604
    new-instance v0, Lcom/ensighten/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ensighten/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 371
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 372
    if-nez v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 375
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 376
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->push(I)V

    .line 377
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    .line 378
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    return-void

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 410
    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 413
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 414
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->push(I)V

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    return-void

    .line 417
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1251
    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 1252
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1253
    const/4 v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    .line 1254
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1255
    return-void
.end method

.method public endArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 391
    if-nez v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 394
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 395
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    .line 396
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    return-void

    .line 399
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 428
    if-nez v0, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 431
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 432
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    .line 433
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 434
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    return-void

    .line 437
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1508
    const/4 v0, 0x0

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    :goto_0
    if-ge v0, v2, :cond_1

    .line 1509
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 1508
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1512
    :pswitch_0
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1518
    :pswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1519
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1520
    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1530
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 447
    if-nez v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 450
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 883
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 884
    if-nez v1, :cond_0

    .line 885
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 887
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 888
    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 889
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 890
    const/4 v0, 0x1

    .line 894
    :goto_0
    return v0

    .line 891
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 892
    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 893
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_0

    .line 896
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 931
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 932
    if-nez v0, :cond_0

    .line 933
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 936
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 937
    iput v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 938
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 939
    iget-wide v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v0, v0

    .line 963
    :goto_0
    return-wide v0

    .line 942
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 943
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 944
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 954
    :cond_2
    :goto_1
    iput v5, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 955
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 956
    iget-boolean v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 957
    :cond_3
    new-instance v2, Lcom/ensighten/google/gson/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ensighten/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 945
    :cond_4
    if-eq v0, v2, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    .line 946
    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    goto :goto_2

    .line 947
    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 948
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 949
    :cond_8
    if-eq v0, v5, :cond_2

    .line 950
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 961
    iput v4, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 962
    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 1199
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 1200
    if-nez v0, :cond_0

    .line 1201
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1205
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 1206
    iget-wide v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v0, v0

    .line 1207
    iget-wide v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1208
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    :cond_1
    iput v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 1212
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 1244
    :goto_0
    return v0

    .line 1216
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1217
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1218
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1234
    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 1235
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1236
    double-to-int v0, v2

    .line 1237
    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_7

    .line 1238
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_3
    if-eq v0, v2, :cond_4

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    .line 1220
    :cond_4
    if-ne v0, v2, :cond_5

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1222
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1223
    const/4 v1, 0x0

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 1224
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1228
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1220
    :cond_5
    const/16 v0, 0x22

    goto :goto_2

    .line 1230
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1241
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1242
    iput v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 1243
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_0
.end method

.method public nextLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 977
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 978
    if-nez v0, :cond_0

    .line 979
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 982
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 983
    iput v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 984
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 985
    iget-wide v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedLong:J

    .line 1016
    :goto_0
    return-wide v0

    .line 988
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 989
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 990
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    .line 1006
    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 1007
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1008
    double-to-long v0, v2

    .line 1009
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_6

    .line 1010
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_2
    if-eq v0, v2, :cond_3

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 992
    :cond_3
    if-ne v0, v2, :cond_4

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 995
    const/4 v2, 0x0

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 996
    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1000
    :catch_0
    move-exception v0

    goto :goto_1

    .line 992
    :cond_4
    const/16 v0, 0x22

    goto :goto_2

    .line 1002
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1014
    iput v6, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 1015
    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public nextName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 819
    if-nez v0, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 823
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 824
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    .line 833
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 834
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 835
    return-object v0

    .line 825
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 826
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 827
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 828
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 830
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 908
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 909
    if-nez v0, :cond_0

    .line 910
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 912
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 913
    const/4 v0, 0x0

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 914
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    .line 916
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 848
    if-nez v0, :cond_0

    .line 849
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 852
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 853
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    .line 870
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 871
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 872
    return-object v0

    .line 854
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 855
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 856
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 857
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 859
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 860
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 861
    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 862
    iget-wide v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 863
    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 864
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 865
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 867
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lcom/ensighten/google/gson/stream/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 458
    if-nez v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 462
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 491
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 464
    :pswitch_0
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/ensighten/google/gson/stream/JsonToken;

    .line 489
    :goto_0
    return-object v0

    .line 466
    :pswitch_1
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->END_OBJECT:Lcom/ensighten/google/gson/stream/JsonToken;

    goto :goto_0

    .line 468
    :pswitch_2
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/ensighten/google/gson/stream/JsonToken;

    goto :goto_0

    .line 470
    :pswitch_3
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->END_ARRAY:Lcom/ensighten/google/gson/stream/JsonToken;

    goto :goto_0

    .line 474
    :pswitch_4
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->NAME:Lcom/ensighten/google/gson/stream/JsonToken;

    goto :goto_0

    .line 477
    :pswitch_5
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->BOOLEAN:Lcom/ensighten/google/gson/stream/JsonToken;

    goto :goto_0

    .line 479
    :pswitch_6
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->NULL:Lcom/ensighten/google/gson/stream/JsonToken;

    goto :goto_0

    .line 484
    :pswitch_7
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->STRING:Lcom/ensighten/google/gson/stream/JsonToken;

    goto :goto_0

    .line 487
    :pswitch_8
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->NUMBER:Lcom/ensighten/google/gson/stream/JsonToken;

    goto :goto_0

    .line 489
    :pswitch_9
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/ensighten/google/gson/stream/JsonToken;

    goto :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->lenient:Z

    .line 364
    return-void
.end method

.method public skipValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1263
    move v0, v1

    .line 1265
    :cond_0
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 1266
    if-nez v2, :cond_1

    .line 1267
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 1270
    :cond_1
    if-ne v2, v5, :cond_3

    .line 1271
    invoke-direct {p0, v4}, Lcom/ensighten/google/gson/stream/JsonReader;->push(I)V

    .line 1272
    add-int/lit8 v0, v0, 0x1

    .line 1291
    :cond_2
    :goto_0
    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peeked:I

    .line 1292
    if-nez v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1295
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    .line 1296
    return-void

    .line 1273
    :cond_3
    if-ne v2, v4, :cond_4

    .line 1274
    invoke-direct {p0, v5}, Lcom/ensighten/google/gson/stream/JsonReader;->push(I)V

    .line 1275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1276
    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 1277
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    .line 1278
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1279
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1280
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->stackSize:I

    .line 1281
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1282
    :cond_6
    const/16 v3, 0xe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    .line 1283
    :cond_7
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_0

    .line 1284
    :cond_8
    const/16 v3, 0x8

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    .line 1285
    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_0

    .line 1286
    :cond_a
    const/16 v3, 0x9

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 1287
    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_0

    .line 1288
    :cond_c
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 1289
    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/ensighten/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
