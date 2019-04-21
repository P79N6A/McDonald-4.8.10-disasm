.class Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;
.super Ljava/lang/Object;
.source "DatabaseQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Table"
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->name:Ljava/lang/String;

    .line 472
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->alias:Ljava/lang/String;

    .line 473
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 486
    if-ne p0, p1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v1

    .line 487
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 489
    check-cast v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;

    .line 491
    .local v0, "table":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->alias:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->alias:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->alias:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 497
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 498
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->alias:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->alias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 499
    return v0

    .line 498
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Table;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
