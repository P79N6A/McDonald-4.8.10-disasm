.class Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
.super Ljava/lang/Object;
.source "DatabaseQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FromClause"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;,
        Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;
    }
.end annotation


# instance fields
.field private currentJoin:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;

.field private joins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;",
            ">;"
        }
    .end annotation
.end field

.field private table:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->joins:Ljava/util/List;

    .line 414
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    invoke-direct {v0, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->table:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;

    .prologue
    .line 406
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->currentJoin:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    move-result-object v0

    return-object v0
.end method

.method private innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 418
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    invoke-direct {v0, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v0, "table":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->innerJoin(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;)V

    .line 420
    return-object p0
.end method

.method private innerJoin(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;)V
    .locals 2
    .param p1, "table"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    .prologue
    .line 424
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;

    const-string v1, "inner"

    invoke-direct {v0, v1, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;)V

    .line 425
    .local v0, "join":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->joins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->currentJoin:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;

    .line 427
    return-void
.end method

.method private leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    invoke-direct {v0, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .local v0, "table":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->leftJoin(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;)V

    .line 432
    return-object p0
.end method

.method private leftJoin(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;)V
    .locals 2
    .param p1, "table"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    .prologue
    .line 436
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;

    const-string v1, "left"

    invoke-direct {v0, v1, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;)V

    .line 437
    .local v0, "join":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->joins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->currentJoin:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;

    .line 439
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 452
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 457
    :goto_0
    return v1

    .line 453
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 455
    check-cast v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    .line 457
    .local v0, "clause":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->table:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    iget-object v2, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->table:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->table:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->table:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->joins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;

    .line 445
    .local v1, "join":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 447
    .end local v1    # "join":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
