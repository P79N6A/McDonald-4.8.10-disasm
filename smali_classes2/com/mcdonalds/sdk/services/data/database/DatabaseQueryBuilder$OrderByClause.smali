.class Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;
.super Ljava/lang/Object;
.source "DatabaseQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrderByClause"
.end annotation


# instance fields
.field private direction:Ljava/lang/String;

.field private mQueryColumn:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)V
    .locals 1
    .param p1, "queryColumn"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;-><init>(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;Ljava/lang/String;)V
    .locals 0
    .param p1, "queryColumn"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    .param p2, "direction"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;->mQueryColumn:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 664
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;->direction:Ljava/lang/String;

    .line 665
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;->mQueryColumn:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;->direction:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 671
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;->direction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
