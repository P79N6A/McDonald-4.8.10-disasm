.class public Lcom/ensighten/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected b:[Ljava/lang/Object;

.field protected c:Ljava/lang/Object;

.field protected d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ensighten/E;-><init>([Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/E;->b:[Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/ensighten/E;->d:I

    .line 76
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 822
    invoke-direct {p0, p1}, Lcom/ensighten/E;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/ensighten/D;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 454
    const-string v0, "arg1"

    invoke-virtual {p1, v0}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    const-string v0, "arg2"

    invoke-virtual {p1, v0}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    const-string v0, "arg3"

    invoke-virtual {p1, v0}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    const/4 v0, 0x0

    .line 460
    const-string v5, "na"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 461
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 462
    array-length v0, v5

    new-array v2, v0, [Ljava/lang/Class;

    move v0, v1

    .line 463
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_8

    .line 464
    aget-object v6, v5, v0

    const-string v7, "byte"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 465
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    .line 463
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    aget-object v6, v5, v0

    const-string v7, "short"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 467
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    goto :goto_1

    .line 468
    :cond_1
    aget-object v6, v5, v0

    const-string v7, "int"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 469
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    goto :goto_1

    .line 470
    :cond_2
    aget-object v6, v5, v0

    const-string v7, "long"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 471
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    goto :goto_1

    .line 472
    :cond_3
    aget-object v6, v5, v0

    const-string v7, "char"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 473
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    goto :goto_1

    .line 474
    :cond_4
    aget-object v6, v5, v0

    const-string v7, "float"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 475
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    goto :goto_1

    .line 476
    :cond_5
    aget-object v6, v5, v0

    const-string v7, "double"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 477
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    goto :goto_1

    .line 478
    :cond_6
    aget-object v6, v5, v0

    const-string v7, "boolean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 479
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    goto :goto_1

    .line 481
    :cond_7
    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v0

    goto :goto_1

    :cond_8
    move-object v0, v2

    .line 487
    :cond_9
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 488
    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 489
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 492
    invoke-virtual {p1}, Lcom/ensighten/D;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    new-array v5, v2, [Ljava/lang/Object;

    .line 493
    const/4 v2, 0x4

    move v3, v2

    move v2, v1

    :goto_2
    invoke-virtual {p1}, Lcom/ensighten/D;->b()I

    move-result v6

    if-gt v3, v6, :cond_12

    .line 494
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 495
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    .line 493
    :goto_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 496
    :cond_a
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 497
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_3

    .line 498
    :cond_b
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 499
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_3

    .line 500
    :cond_c
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 501
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 502
    :cond_d
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 504
    :cond_e
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 505
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 506
    :cond_f
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 507
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 508
    :cond_10
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 509
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 511
    :cond_11
    aget-object v6, v0, v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "arg"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ensighten/E;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 516
    :cond_12
    iget-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    .line 517
    return-void
.end method

.method private a(Lcom/ensighten/D;Z)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 385
    const-string v0, "@[^@]*@"

    invoke-static {v0, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 386
    invoke-virtual {p1}, Lcom/ensighten/D;->c()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 389
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 391
    :goto_0
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 392
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 394
    const-string v0, "@"

    const-string v2, ""

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 396
    const-string v0, "cv"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 432
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 433
    goto :goto_0

    .line 398
    :cond_0
    const-string v0, "r:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v2, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 401
    :cond_1
    const-string v0, "target"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "arg["

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 404
    :cond_2
    const-string v0, "target"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v7, v0, :cond_3

    .line 2885
    iget-object v3, p0, Lcom/ensighten/E;->e:Ljava/lang/Object;

    .line 406
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 413
    :goto_2
    if-eqz v4, :cond_5

    .line 415
    :try_start_0
    const-string v0, "\\."

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move v6, v7

    move-object v2, v8

    .line 417
    :goto_3
    array-length v0, v11

    if-ge v6, v0, :cond_4

    .line 418
    aget-object v0, v11, v6

    sget-object v2, Lcom/ensighten/a;->c:[Ljava/lang/Class;

    invoke-virtual {v4, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 419
    sget-object v0, Lcom/ensighten/a;->c:[Ljava/lang/Class;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_8

    .line 421
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    move-object v0, v2

    .line 417
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_3

    .line 407
    :cond_3
    const-string v0, "arg["

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v7, v0, :cond_9

    .line 408
    const/4 v0, 0x4

    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3861
    iget-object v2, p0, Lcom/ensighten/E;->b:[Ljava/lang/Object;

    .line 410
    aget-object v3, v2, v0

    .line 411
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_2

    .line 425
    :cond_4
    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-static {}, Lcom/ensighten/i;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 428
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    :cond_5
    move-object v0, v5

    goto/16 :goto_1

    .line 435
    :cond_6
    if-eqz p2, :cond_7

    .line 436
    invoke-static {v1}, Lcom/ensighten/Ensighten;->evaluateSyncJS(Ljava/lang/String;)V

    .line 440
    :goto_5
    return-void

    .line 438
    :cond_7
    invoke-static {v1}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v3, v4

    goto :goto_4

    :cond_9
    move-object v3, v8

    move-object v4, v8

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 834
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-object p1

    .line 838
    :cond_1
    const-string v0, "r:"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 840
    :cond_2
    const-string v0, "arg:"

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lcom/ensighten/E;->b:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, v1, v0

    goto :goto_0
.end method

.method private b(Lcom/ensighten/D;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error calling a method of a null object."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    const-string v0, "arg1"

    invoke-virtual {p1, v0}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 534
    const-string v0, "arg2"

    invoke-virtual {p1, v0}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    const/4 v0, 0x0

    .line 538
    const-string v4, "na"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 539
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 540
    array-length v0, v4

    new-array v2, v0, [Ljava/lang/Class;

    move v0, v1

    .line 541
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_9

    .line 542
    aget-object v5, v4, v0

    const-string v6, "byte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 543
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    .line 541
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_1
    aget-object v5, v4, v0

    const-string v6, "short"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 545
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    goto :goto_1

    .line 546
    :cond_2
    aget-object v5, v4, v0

    const-string v6, "int"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 547
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    goto :goto_1

    .line 548
    :cond_3
    aget-object v5, v4, v0

    const-string v6, "long"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 549
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    goto :goto_1

    .line 550
    :cond_4
    aget-object v5, v4, v0

    const-string v6, "char"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 551
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    goto :goto_1

    .line 552
    :cond_5
    aget-object v5, v4, v0

    const-string v6, "float"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 553
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    goto :goto_1

    .line 554
    :cond_6
    aget-object v5, v4, v0

    const-string v6, "double"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 555
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    goto :goto_1

    .line 556
    :cond_7
    aget-object v5, v4, v0

    const-string v6, "boolean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 557
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    goto :goto_1

    .line 559
    :cond_8
    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v0

    goto :goto_1

    :cond_9
    move-object v0, v2

    .line 565
    :cond_a
    iget-object v2, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v3, v0}, Lcom/ensighten/Utils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 566
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 569
    invoke-virtual {p1}, Lcom/ensighten/D;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    new-array v5, v2, [Ljava/lang/Object;

    .line 570
    const/4 v2, 0x3

    move v3, v2

    move v2, v1

    :goto_2
    invoke-virtual {p1}, Lcom/ensighten/D;->b()I

    move-result v6

    if-gt v3, v6, :cond_13

    .line 571
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    .line 570
    :goto_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 573
    :cond_b
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_3

    .line 575
    :cond_c
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 576
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_3

    .line 577
    :cond_d
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 578
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 579
    :cond_e
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 580
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 581
    :cond_f
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 582
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 583
    :cond_10
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 584
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 585
    :cond_11
    aget-object v6, v0, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 586
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "arg"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 588
    :cond_12
    aget-object v6, v0, v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "arg"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ensighten/E;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    goto/16 :goto_3

    .line 593
    :cond_13
    iget-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    .line 594
    return-void
.end method

.method private c(Lcom/ensighten/D;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 649
    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 650
    invoke-static {}, Lcom/ensighten/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "Failed to execute getDlObject instruction because the current activity is null."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    const-string v0, "arg1"

    invoke-virtual {p1, v0}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 660
    invoke-virtual {p1}, Lcom/ensighten/D;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 663
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 664
    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 682
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 683
    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto :goto_0

    .line 666
    :cond_3
    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 667
    check-cast v0, Landroid/view/ViewGroup;

    .line 668
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 669
    array-length v5, v4

    .line 670
    const/4 v2, 0x0

    move v6, v2

    move-object v2, v0

    move-object v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v5, :cond_2

    .line 671
    aget-object v0, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 672
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 673
    check-cast v0, Landroid/view/ViewGroup;

    .line 670
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1

    .line 685
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error finding a view in the UI."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Lcom/ensighten/D;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 719
    invoke-static {v6}, Lcom/ensighten/Ensighten;->setVideoHeartbeatEnabled(Z)V

    .line 720
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v0}, Lcom/ensighten/Ensighten;->setVideoHeartbeatAdBreaks(Landroid/util/SparseArray;)V

    .line 723
    invoke-virtual {p1}, Lcom/ensighten/D;->b()I

    move-result v7

    move v5, v6

    .line 724
    :goto_0
    if-gt v5, v7, :cond_4

    .line 726
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "arg"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    const-string v1, "na"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 729
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 730
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 731
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v4, v1, v2

    .line 735
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 736
    new-instance v0, Lcom/ensighten/U;

    const/4 v1, 0x0

    const-string v2, "adStart"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/U;-><init>(ZLjava/lang/String;III)V

    .line 737
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    :goto_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 738
    invoke-static {}, Lcom/ensighten/Ensighten;->getVideoHeartbeatAdBreaks()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 739
    if-nez v1, :cond_0

    .line 740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 741
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-static {}, Lcom/ensighten/Ensighten;->getVideoHeartbeatAdBreaks()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 737
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 746
    :cond_1
    new-instance v0, Lcom/ensighten/U;

    const/4 v1, 0x0

    const-string v2, "adComplete"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/U;-><init>(ZLjava/lang/String;III)V

    .line 747
    invoke-static {}, Lcom/ensighten/Ensighten;->getVideoHeartbeatAdBreaks()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 748
    if-nez v1, :cond_2

    .line 749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 750
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-static {}, Lcom/ensighten/Ensighten;->getVideoHeartbeatAdBreaks()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    invoke-static {}, Lcom/ensighten/i;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 755
    const-string v1, "Failed to execute instruction."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ensighten/i;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 758
    :cond_4
    return-void
.end method

.method private e(Lcom/ensighten/D;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 772
    invoke-static {v6}, Lcom/ensighten/Ensighten;->setVideoHeartbeatEnabled(Z)V

    .line 773
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v0}, Lcom/ensighten/Ensighten;->setVideoHeartbeatChapters(Landroid/util/SparseArray;)V

    .line 776
    invoke-virtual {p1}, Lcom/ensighten/D;->b()I

    move-result v7

    move v5, v6

    .line 777
    :goto_0
    if-gt v5, v7, :cond_4

    .line 779
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "arg"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    const-string v1, "na"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 782
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 783
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 784
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v4, v1, v2

    .line 788
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 789
    new-instance v0, Lcom/ensighten/U;

    const/4 v1, 0x1

    const-string v2, "chapterStart"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/U;-><init>(ZLjava/lang/String;III)V

    .line 790
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    :goto_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 791
    invoke-static {}, Lcom/ensighten/Ensighten;->getVideoHeartbeatChapters()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 792
    if-nez v1, :cond_0

    .line 793
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 794
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    invoke-static {}, Lcom/ensighten/Ensighten;->getVideoHeartbeatChapters()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 790
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 799
    :cond_1
    new-instance v0, Lcom/ensighten/U;

    const/4 v1, 0x1

    const-string v2, "chapterComplete"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/U;-><init>(ZLjava/lang/String;III)V

    .line 800
    invoke-static {}, Lcom/ensighten/Ensighten;->getVideoHeartbeatChapters()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 801
    if-nez v1, :cond_2

    .line 802
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 803
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-static {}, Lcom/ensighten/Ensighten;->getVideoHeartbeatChapters()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    invoke-static {}, Lcom/ensighten/i;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 808
    const-string v1, "Failed to execute instruction."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ensighten/i;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 811
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ensighten/D;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/ensighten/E;->d:I

    :goto_0
    iget v0, p0, Lcom/ensighten/E;->d:I

    if-ge v0, v1, :cond_1

    .line 100
    iget v0, p0, Lcom/ensighten/E;->d:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/D;

    .line 101
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {}, Lcom/ensighten/i;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const-string v3, "Executing instruction %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 1029
    :cond_0
    sget-object v3, Lcom/ensighten/c$a;->a:Lcom/ensighten/c;

    .line 1095
    iget-object v4, v3, Lcom/ensighten/c;->a:Ljava/util/Set;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :try_start_1
    iget-object v3, v3, Lcom/ensighten/c;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 1099
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    iput-object v6, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    .line 171
    invoke-static {}, Lcom/ensighten/i;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "Failed to execute instruction."

    invoke-static {v1, v0}, Lcom/ensighten/i;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    if-nez v0, :cond_22

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1099
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :try_start_4
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setCurrentValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1187
    invoke-virtual {v0}, Lcom/ensighten/D;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    .line 99
    :cond_3
    :goto_3
    iget v0, p0, Lcom/ensighten/E;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/E;->d:I

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setRegisterCV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1198
    iget-object v2, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ensighten/D;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 112
    :cond_5
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setRegister"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1211
    iget-object v2, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    const-string v3, "arg1"

    invoke-virtual {v0, v3}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ensighten/D;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 114
    :cond_6
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "replace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1222
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1223
    const-string v3, "arg2"

    invoke-virtual {v0, v3}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1224
    iget-object v3, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto :goto_3

    .line 116
    :cond_7
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "search"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1235
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1236
    const-string v3, "arg2"

    invoke-virtual {v0, v3}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    iget-object v3, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    iget-object v4, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 118
    :cond_8
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "split"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1248
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1249
    const-string v3, "arg2"

    invoke-virtual {v0, v3}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1250
    const-string v4, "arg3"

    invoke-virtual {v0, v4}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    iget-object v4, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1252
    iget-object v4, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    aget-object v2, v2, v3

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 120
    :cond_9
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1262
    iget-object v2, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1263
    const-string v3, "arg1"

    invoke-virtual {v0, v3}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    iget-object v3, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 122
    :cond_a
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1275
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1276
    const-string v3, "arg2"

    invoke-virtual {v0, v3}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1277
    iget-object v3, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    iget-object v4, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 124
    :cond_b
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cut"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1287
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1288
    const-string v3, "arg2"

    invoke-virtual {v0, v3}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1289
    iget-object v3, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 126
    :cond_c
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "append"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ensighten/D;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 128
    :cond_d
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "prepend"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ensighten/D;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 130
    :cond_e
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "compare"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1317
    iget-object v2, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ensighten/D;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1318
    const-string v3, "arg1"

    invoke-virtual {v0, v3}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1319
    iget-object v4, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    if-eqz v2, :cond_f

    const-string v0, "1"

    :goto_4
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_f
    const-string v0, "0"

    goto :goto_4

    .line 132
    :cond_10
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jumpIfZ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1330
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1331
    iget-object v3, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1332
    if-nez v2, :cond_3

    .line 1333
    invoke-virtual {v0}, Lcom/ensighten/D;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ensighten/E;->d:I

    goto/16 :goto_3

    .line 134
    :cond_11
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jumpIfNZ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1345
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1346
    iget-object v3, p0, Lcom/ensighten/E;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1347
    if-eqz v2, :cond_3

    .line 1348
    invoke-virtual {v0}, Lcom/ensighten/D;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ensighten/E;->d:I

    goto/16 :goto_3

    .line 136
    :cond_12
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1356
    const v0, 0x7ffffffe

    iput v0, p0, Lcom/ensighten/E;->d:I

    goto/16 :goto_3

    .line 138
    :cond_13
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInvTarget"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1363
    iget-object v0, p0, Lcom/ensighten/E;->e:Ljava/lang/Object;

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 140
    :cond_14
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInvArg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1374
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1375
    iget-object v2, p0, Lcom/ensighten/E;->b:[Ljava/lang/Object;

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 142
    :cond_15
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "callJSFunction"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 143
    invoke-direct {p0, v0, p2}, Lcom/ensighten/E;->a(Lcom/ensighten/D;Z)V

    goto/16 :goto_3

    .line 144
    :cond_16
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "callMethod"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 145
    invoke-direct {p0, v0}, Lcom/ensighten/E;->b(Lcom/ensighten/D;)V

    goto/16 :goto_3

    .line 146
    :cond_17
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "callStaticMethod"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 147
    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Lcom/ensighten/D;)V

    goto/16 :goto_3

    .line 148
    :cond_18
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPropVal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1607
    iget-object v2, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    if-nez v2, :cond_19

    .line 1608
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error getting the property of a null object."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1610
    :cond_19
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1611
    iget-object v2, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1612
    invoke-static {v2, v0}, Lcom/ensighten/Utils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1613
    if-eqz v0, :cond_3

    .line 1614
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1615
    iget-object v2, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 150
    :cond_1a
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getStaticPropVal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1629
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1630
    const-string v3, "arg2"

    invoke-virtual {v0, v3}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1632
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1633
    invoke-static {v2, v0}, Lcom/ensighten/Utils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1634
    if-eqz v0, :cond_3

    .line 1635
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1636
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 152
    :cond_1b
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "loadDLObject"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 153
    invoke-direct {p0, v0}, Lcom/ensighten/E;->c(Lcom/ensighten/D;)V

    goto/16 :goto_3

    .line 154
    :cond_1c
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "stringify"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1693
    iget-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 156
    :cond_1d
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getClass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1703
    const-string v2, "arg1"

    invoke-virtual {v0, v2}, Lcom/ensighten/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1704
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 158
    :cond_1e
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getCallingMethodName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1893
    iget-object v0, p0, Lcom/ensighten/E;->f:Ljava/lang/String;

    .line 2865
    iput-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 160
    :cond_1f
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setVideoAdBreaks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 161
    invoke-direct {p0, v0}, Lcom/ensighten/E;->d(Lcom/ensighten/D;)V

    goto/16 :goto_3

    .line 162
    :cond_20
    invoke-virtual {v0}, Lcom/ensighten/D;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setVideoChapters"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 163
    invoke-direct {p0, v0}, Lcom/ensighten/E;->e(Lcom/ensighten/D;)V

    goto/16 :goto_3

    .line 165
    :cond_21
    invoke-static {}, Lcom/ensighten/i;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    const-string v0, "Instruction opcode not recognized: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 175
    :cond_22
    iget-object v0, p0, Lcom/ensighten/E;->c:Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method public final a([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/ensighten/E;->b:[Ljava/lang/Object;

    .line 858
    return-void
.end method

.method public final a()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/ensighten/E;->b:[Ljava/lang/Object;

    return-object v0
.end method
