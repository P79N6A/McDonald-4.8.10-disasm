.class public Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
.super Ljava/lang/Object;
.source "DatabaseQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryColumn"
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private column:Ljava/lang/String;

.field private nullFallBackColumn:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

.field private nullFallBackValue:Ljava/lang/String;

.field private table:Ljava/lang/String;

.field private tableAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->table:Ljava/lang/String;

    .line 358
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->column:Ljava/lang/String;

    .line 359
    iput-object p3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->alias:Ljava/lang/String;

    .line 360
    iput-object p4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->tableAlias:Ljava/lang/String;

    .line 361
    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->table:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->tableAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->tableAlias:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public setNullFallBackColumn(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    .locals 0
    .param p1, "nullFallBackColumn"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->nullFallBackColumn:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 365
    return-object p0
.end method

.method public setNullFallBackValue(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    .locals 0
    .param p1, "nullFallBackValue"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->nullFallBackValue:Ljava/lang/String;

    .line 370
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "columnAlias":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->column:Ljava/lang/String;

    .line 377
    .local v1, "columnName":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->alias:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 378
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->alias:Ljava/lang/String;

    .line 379
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->alias:Ljava/lang/String;

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->table:Ljava/lang/String;

    .line 383
    .local v3, "tableName":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->tableAlias:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 384
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->tableAlias:Ljava/lang/String;

    .line 385
    if-nez v0, :cond_1

    .line 386
    new-array v4, v9, [Ljava/lang/String;

    aput-object v3, v4, v6

    const-string v5, "_"

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->access$1200([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_1
    new-array v4, v9, [Ljava/lang/String;

    aput-object v3, v4, v6

    const-string v5, "."

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->column:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->access$1200([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "columnString":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->nullFallBackValue:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 393
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ifnull("

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    const-string v5, ", "

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->nullFallBackValue:Ljava/lang/String;

    aput-object v5, v4, v9

    const-string v5, ")"

    aput-object v5, v4, v10

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->access$1200([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 399
    new-array v4, v9, [Ljava/lang/String;

    aput-object v2, v4, v6

    const-string v5, " "

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->access$1200([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    :cond_3
    return-object v2

    .line 394
    :cond_4
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->nullFallBackColumn:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    if-eqz v4, :cond_2

    .line 395
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ifnull("

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    const-string v5, ", "

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->nullFallBackColumn:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, ")"

    aput-object v5, v4, v10

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->access$1200([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
