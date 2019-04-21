.class Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;
.super Ljava/lang/Object;
.source "DatabaseQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Join"
.end annotation


# instance fields
.field private onClauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;",
            ">;"
        }
    .end annotation
.end field

.field private table:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "table"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->onClauses:Ljava/util/List;

    .line 514
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->type:Ljava/lang/String;

    .line 515
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->table:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    .line 516
    return-void
.end method


# virtual methods
.method public on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V
    .locals 1
    .param p1, "comparison"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->onClauses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " join "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->table:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->onClauses:Ljava/util/List;

    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    const-string v3, " on"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->onClauses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 530
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->onClauses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    .line 531
    .local v1, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    if-lez v2, :cond_1

    .line 532
    invoke-static {v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$700(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 533
    const-string v3, " or"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_1
    :goto_1
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_2
    const-string v3, " and"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 540
    .end local v1    # "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
