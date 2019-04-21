.class public final Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;,
        Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;,
        Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,
        Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;,
        Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I

.field table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    .line 42
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$1;

    invoke-direct {v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 50
    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 51
    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->modCount:I

    .line 75
    if-eqz p1, :cond_0

    .end local p1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_0
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 78
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-direct {v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->header:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 79
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 80
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->threshold:I

    .line 81
    return-void

    .line 75
    .restart local p1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    sget-object p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->doubleCapacity([Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 527
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->threshold:I

    .line 528
    return-void
.end method

.method static doubleCapacity([Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)[",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "oldTable":[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 101
    array-length v5, p0

    .line 103
    mul-int/lit8 v0, v5, 0x2

    new-array v6, v0, [Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 104
    new-instance v7, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v7}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;-><init>()V

    .line 105
    new-instance v8, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v8}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 106
    new-instance v9, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v9}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    move v4, v1

    .line 109
    :goto_0
    if-ge v4, v5, :cond_7

    .line 110
    aget-object v10, p0, v4

    .line 111
    if-eqz v10, :cond_4

    .line 116
    invoke-virtual {v7, v10}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    move v0, v1

    move v2, v1

    .line 119
    :goto_1
    invoke-virtual {v7}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 120
    iget v11, v11, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v11, v5

    if-nez v11, :cond_0

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {v8, v2}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 129
    invoke-virtual {v9, v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 130
    invoke-virtual {v7, v10}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 131
    :goto_2
    invoke-virtual {v7}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 132
    iget v11, v10, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v11, v5

    if-nez v11, :cond_2

    .line 133
    invoke-virtual {v8, v10}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_2

    .line 135
    :cond_2
    invoke-virtual {v9, v10}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_2

    .line 140
    :cond_3
    if-lez v2, :cond_5

    invoke-virtual {v8}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v2

    :goto_3
    aput-object v2, v6, v4

    .line 141
    add-int v2, v4, v5

    if-lez v0, :cond_6

    invoke-virtual {v9}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    :goto_4
    aput-object v0, v6, v2

    .line 109
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_5
    move-object v2, v3

    .line 140
    goto :goto_3

    :cond_6
    move-object v0, v3

    .line 141
    goto :goto_4

    .line 143
    :cond_7
    return-object v6
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 295
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rebalance(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .locals 9
    .param p2, "insert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 398
    :goto_0
    if-eqz p1, :cond_a

    .line 399
    iget-object v3, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 400
    iget-object v4, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 401
    if-eqz v3, :cond_2

    iget v0, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    .line 402
    :goto_1
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 404
    :goto_2
    sub-int v5, v2, v0

    .line 405
    const/4 v6, -0x2

    if-ne v5, v6, :cond_8

    .line 406
    iget-object v3, v4, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 407
    iget-object v0, v4, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 408
    if-eqz v0, :cond_4

    iget v0, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    .line 409
    :goto_3
    if-eqz v3, :cond_5

    iget v0, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 411
    :goto_4
    sub-int/2addr v0, v2

    .line 412
    if-eq v0, v7, :cond_0

    if-nez v0, :cond_6

    if-nez p2, :cond_6

    .line 413
    :cond_0
    invoke-direct {p0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 419
    :goto_5
    if-nez p2, :cond_a

    .line 398
    :cond_1
    :goto_6
    iget-object p1, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    :cond_2
    move v2, v1

    .line 401
    goto :goto_1

    :cond_3
    move v0, v1

    .line 402
    goto :goto_2

    :cond_4
    move v2, v1

    .line 408
    goto :goto_3

    :cond_5
    move v0, v1

    .line 409
    goto :goto_4

    .line 415
    :cond_6
    sget-boolean v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_7

    if-eq v0, v8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 416
    :cond_7
    invoke-direct {p0, v4}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 417
    invoke-direct {p0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_5

    .line 423
    :cond_8
    const/4 v4, 0x2

    if-ne v5, v4, :cond_f

    .line 424
    iget-object v4, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 425
    iget-object v0, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 426
    if-eqz v0, :cond_b

    iget v0, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    .line 427
    :goto_7
    if-eqz v4, :cond_c

    iget v0, v4, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 429
    :goto_8
    sub-int/2addr v0, v2

    .line 430
    if-eq v0, v8, :cond_9

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    .line 431
    :cond_9
    invoke-direct {p0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 437
    :goto_9
    if-eqz p2, :cond_1

    .line 455
    :cond_a
    :goto_a
    return-void

    :cond_b
    move v2, v1

    .line 426
    goto :goto_7

    :cond_c
    move v0, v1

    .line 427
    goto :goto_8

    .line 433
    :cond_d
    sget-boolean v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    if-eq v0, v7, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 434
    :cond_e
    invoke-direct {p0, v3}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 435
    invoke-direct {p0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_9

    .line 441
    :cond_f
    if-nez v5, :cond_10

    .line 442
    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 443
    if-eqz p2, :cond_1

    goto :goto_a

    .line 448
    :cond_10
    sget-boolean v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v3, :cond_11

    if-eq v5, v7, :cond_11

    if-eq v5, v8, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 449
    :cond_11
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 450
    if-eqz p2, :cond_a

    goto :goto_6
.end method

.method private replaceInParent(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p2, "replacement":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 372
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 373
    if-eqz p2, :cond_0

    .line 374
    iput-object v0, p2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 377
    :cond_0
    if-eqz v0, :cond_3

    .line 378
    iget-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    if-ne v1, p1, :cond_1

    .line 379
    iput-object p2, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 388
    :goto_0
    return-void

    .line 381
    :cond_1
    sget-boolean v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v1, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 382
    :cond_2
    iput-object p2, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 385
    :cond_3
    iget v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 386
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    aput-object p2, v1, v0

    goto :goto_0
.end method

.method private rotateLeft(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 461
    iget-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 462
    iget-object v3, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 463
    iget-object v4, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 464
    iget-object v5, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 467
    iput-object v4, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 468
    if-eqz v4, :cond_0

    .line 469
    iput-object p1, v4, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 472
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 475
    iput-object p1, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 476
    iput-object v3, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 479
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_0
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 481
    iget v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v5, :cond_1

    iget v1, v5, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 483
    return-void

    :cond_2
    move v2, v1

    .line 479
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private rotateRight(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 489
    iget-object v3, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 490
    iget-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 491
    iget-object v4, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 492
    iget-object v5, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 495
    iput-object v5, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 496
    if-eqz v5, :cond_0

    .line 497
    iput-object p1, v5, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 500
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 503
    iput-object p1, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 504
    iput-object v3, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 507
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_0
    if-eqz v5, :cond_3

    iget v0, v5, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 509
    iget v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v4, :cond_1

    iget v1, v4, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 511
    return-void

    :cond_2
    move v2, v1

    .line 507
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static secondaryHash(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 91
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 92
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 537
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 177
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->modCount:I

    .line 180
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->header:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 181
    iget-object v0, v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_0
    if-eq v0, v2, :cond_0

    .line 182
    iget-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 183
    iput-object v3, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v3, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v0, v1

    .line 185
    goto :goto_0

    .line 187
    :cond_0
    iput-object v2, v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v2, v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 188
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 159
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;

    .line 516
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;-><init>(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;

    goto :goto_0
.end method

.method final find(Ljava/lang/Object;Z)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 10
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 203
    iget-object v7, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 204
    iget-object v8, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v3

    .line 206
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    and-int v9, v3, v0

    .line 207
    aget-object v1, v8, v9

    .line 208
    const/4 v0, 0x0

    .line 210
    if-eqz v1, :cond_a

    .line 213
    sget-object v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v7, v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 218
    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 223
    :goto_1
    if-nez v4, :cond_3

    move-object v2, v1

    .line 267
    :cond_0
    :goto_2
    return-object v2

    :cond_1
    move-object v0, v2

    .line 213
    goto :goto_0

    .line 218
    :cond_2
    iget-object v4, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v7, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    .line 228
    :cond_3
    if-gez v4, :cond_4

    iget-object v5, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 229
    :goto_3
    if-eqz v5, :cond_5

    move-object v1, v5

    .line 234
    goto :goto_0

    .line 228
    :cond_4
    iget-object v5, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_3

    :cond_5
    move v6, v4

    .line 238
    :goto_4
    if-eqz p2, :cond_0

    .line 243
    iget-object v4, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->header:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 245
    if-nez v1, :cond_8

    .line 247
    sget-object v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v7, v0, :cond_6

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_6

    .line 248
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_6
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v5, v4, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 251
    aput-object v0, v8, v9

    .line 262
    :goto_5
    iget v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->size:I

    iget v2, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->threshold:I

    if-le v1, v2, :cond_7

    .line 263
    invoke-direct {p0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->doubleCapacity()V

    .line 265
    :cond_7
    iget v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->modCount:I

    move-object v2, v0

    .line 267
    goto :goto_2

    .line 253
    :cond_8
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v5, v4, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 254
    if-gez v6, :cond_9

    .line 255
    iput-object v0, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 259
    :goto_6
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    goto :goto_5

    .line 257
    :cond_9
    iput-object v0, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_6

    :cond_a
    move v6, v0

    goto :goto_4
.end method

.method final findByEntry(Ljava/util/Map$Entry;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 291
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    .line 290
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final findByObject(Ljava/lang/Object;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 273
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 275
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;

    .line 522
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;-><init>(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$KeySet;

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 168
    iget-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 169
    iput-object p2, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 170
    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final removeInternal(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .locals 6
    .param p2, "unlink"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 305
    if-eqz p2, :cond_0

    .line 306
    iget-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 307
    iget-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 308
    iput-object v5, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 311
    :cond_0
    iget-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 312
    iget-object v1, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 313
    iget-object v3, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 314
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 325
    iget v3, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iget v4, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-le v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->last()Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 326
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 329
    iget-object v3, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 330
    if-eqz v3, :cond_6

    .line 331
    iget v1, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 332
    iput-object v3, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 333
    iput-object v0, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 334
    iput-object v5, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 337
    :goto_1
    iget-object v3, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 338
    if-eqz v3, :cond_1

    .line 339
    iget v2, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 340
    iput-object v3, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 341
    iput-object v0, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 342
    iput-object v5, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 344
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 345
    invoke-direct {p0, p1, v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 360
    :goto_2
    return-void

    .line 325
    :cond_2
    invoke-virtual {v1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->first()Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_3
    if-eqz v0, :cond_4

    .line 348
    invoke-direct {p0, p1, v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 349
    iput-object v5, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 357
    :goto_3
    invoke-direct {p0, v3, v2}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 358
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 359
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->modCount:I

    goto :goto_2

    .line 350
    :cond_4
    if-eqz v1, :cond_5

    .line 351
    invoke-direct {p0, p1, v1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 352
    iput-object v5, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_3

    .line 354
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method final removeInternalByKey(Ljava/lang/Object;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_0

    .line 365
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 367
    :cond_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
