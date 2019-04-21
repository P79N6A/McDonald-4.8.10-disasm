.class public Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
.super Ljava/lang/Object;
.source "DatabaseQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;,
        Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;,
        Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;,
        Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;,
        Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    }
.end annotation


# static fields
.field static final ACTION_DELETE:Ljava/lang/String; = "delete"

.field static final ACTION_SELECT:Ljava/lang/String; = "select"

.field static final ACTION_UPDATE:Ljava/lang/String; = "update"

.field private static final ORDER_ASC:Ljava/lang/String; = "ASC"

.field private static final ORDER_DESC:Ljava/lang/String; = "DESC"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFromClause:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

.field private final mFromClauses:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupByColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrderByClauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhereClauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mColumns:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mWhereClauses:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mGroupByColumns:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mOrderByClauses:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mAction:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$1200([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->format([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs format([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 681
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V
    .locals 2
    .param p1, "comparison"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mCurrentFromClause:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You should call `from` before adding a join"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mCurrentFromClause:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->access$1000(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;

    move-result-object v0

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You should add a Join before calling `on`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mCurrentFromClause:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->access$1000(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause$Join;->on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 209
    return-void
.end method

.method private updateColumnsWithAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mColumns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 213
    .local v0, "column":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->access$100(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->access$200(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 214
    invoke-static {v0, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->access$202(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 217
    .end local v0    # "column":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    :cond_1
    return-void
.end method

.method private where(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V
    .locals 1
    .param p1, "comparison"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mWhereClauses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method


# virtual methods
.method public addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 8
    .param p1, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    .prologue
    const/4 v7, 0x0

    .line 61
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getFields()Ljava/util/List;

    move-result-object v2

    .line 62
    .local v2, "modelFields":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "tableName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    .line 65
    .local v0, "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mColumns:Ljava/util/List;

    new-instance v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    iget-object v6, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->name:Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    new-instance v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    invoke-direct {v5, v3, v7, v7}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 68
    return-object p0
.end method

.method public addAllFromTable(Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 8
    .param p1, "model"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    .param p2, "tableAlias"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 72
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getFields()Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "modelFields":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "tableName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 75
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    .line 76
    .local v0, "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mColumns:Ljava/util/List;

    new-instance v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    iget-object v6, v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;->name:Ljava/lang/String;

    invoke-direct {v5, v3, v6, v7, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "field":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    new-instance v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    invoke-direct {v5, v3, p2, v7}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 79
    return-object p0
.end method

.method public addColumn(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 5
    .param p1, "column"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mColumns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->access$100(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->access$200(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 57
    return-object p0
.end method

.method public addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mColumns:Ljava/util/List;

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    invoke-direct {v1, p1, v2, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 39
    return-object p0
.end method

.method public addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mColumns:Ljava/util/List;

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    invoke-direct {v1, p1, p2, p3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    invoke-direct {v1, p1, v2, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 45
    return-object p0
.end method

.method public addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mColumns:Ljava/util/List;

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p4, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 51
    return-object p0
.end method

.method public from(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    .line 84
    return-object p0
.end method

.method public from(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;)V

    .line 91
    .local v0, "clause":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 93
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mCurrentFromClause:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    .line 94
    return-object p0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 9

    .prologue
    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mAction:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mColumns:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 285
    if-lez v3, :cond_0

    .line 286
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_0
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mColumns:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 289
    .local v1, "column":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "column":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    :cond_1
    const-string v7, " from"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 293
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    .line 294
    .local v0, "clause":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 296
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 299
    .end local v0    # "clause":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    :cond_3
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mWhereClauses:Ljava/util/List;

    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 300
    const-string v7, " where"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mWhereClauses:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 302
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mWhereClauses:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    .line 303
    .local v2, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    if-lez v3, :cond_4

    .line 304
    invoke-static {v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$700(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 305
    const-string v7, " or"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_4
    :goto_3
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 307
    :cond_5
    const-string v7, " and"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 313
    .end local v2    # "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    :cond_6
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mGroupByColumns:Ljava/util/List;

    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 314
    const-string v7, " group by"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const/4 v3, 0x0

    :goto_4
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mGroupByColumns:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 316
    if-lez v3, :cond_7

    .line 317
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_7
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mGroupByColumns:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 320
    .restart local v1    # "column":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 324
    .end local v1    # "column":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    :cond_8
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mOrderByClauses:Ljava/util/List;

    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 325
    const-string v7, " order by"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const/4 v3, 0x0

    :goto_5
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mOrderByClauses:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_a

    .line 327
    if-lez v3, :cond_9

    .line 328
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_9
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mOrderByClauses:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;

    .line 331
    .local v5, "orderByClause":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 335
    .end local v5    # "orderByClause":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public groupBy(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 1
    .param p1, "column"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mGroupByColumns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-object p0
.end method

.method public groupBy(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    invoke-direct {v0, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v0, "queryColumn":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mGroupByColumns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-object p0
.end method

.method public innerJoin(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public innerJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mCurrentFromClause:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You should call `from` before adding a join"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mCurrentFromClause:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    invoke-static {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->access$300(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->updateColumnsWithAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;)V

    .line 110
    .local v0, "clause":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 111
    return-object p0
.end method

.method public leftJoin(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public leftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mCurrentFromClause:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You should call `from` before adding a join"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mCurrentFromClause:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    invoke-static {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;->access$400(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->updateColumnsWithAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$1;)V

    .line 127
    .local v0, "clause":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$FromClause;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mFromClauses:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 128
    return-object p0
.end method

.method public onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 2
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, p3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$600(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 142
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 143
    return-object p0
.end method

.method public onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "tableRight"    # Ljava/lang/String;
    .param p4, "columnRight"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v2, p3, p4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v2, "right":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$500(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 135
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 136
    return-object p0
.end method

.method public onEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 1
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "?"

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->onEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs onIn(Ljava/lang/String;Ljava/lang/String;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 2
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "columns"    # [Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    .prologue
    .line 172
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, p3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$800(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 174
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 175
    return-object p0
.end method

.method public varargs onIn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 2
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;

    .prologue
    .line 179
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, p3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$900(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 181
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 182
    return-object p0
.end method

.method public orOnEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, p3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$600(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 162
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$702(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;Z)Z

    .line 163
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 164
    return-object p0
.end method

.method public orOnEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 4
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "tableRight"    # Ljava/lang/String;
    .param p4, "columnRight"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v2, p3, p4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v2, "right":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$500(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 154
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$702(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;Z)Z

    .line 155
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 156
    return-object p0
.end method

.method public orOnEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 1
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v0, "?"

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->orOnEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs orOnIn(Ljava/lang/String;Ljava/lang/String;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "columns"    # [Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    .prologue
    .line 186
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, p3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$800(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 188
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$702(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;Z)Z

    .line 189
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 190
    return-object p0
.end method

.method public varargs orOnIn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;

    .prologue
    .line 194
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, p3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$900(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 196
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$702(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;Z)Z

    .line 197
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->on(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 198
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v1, "queryColumn":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;-><init>(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;)V

    .line 270
    .local v0, "clause":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mOrderByClauses:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-object p0
.end method

.method public orderByAsc(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v1, "queryColumn":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;

    const-string v2, "ASC"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;-><init>(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;Ljava/lang/String;)V

    .line 277
    .local v0, "clause":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$OrderByClause;
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->mOrderByClauses:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-object p0
.end method

.method public whereEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 2
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, p3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$600(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 230
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->where(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 231
    return-object p0
.end method

.method public whereEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "tableRight"    # Ljava/lang/String;
    .param p4, "columnRight"    # Ljava/lang/String;

    .prologue
    .line 220
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v2, p3, p4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v2, "right":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$500(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 223
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->where(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 224
    return-object p0
.end method

.method public whereEqualArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 1
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v0, "?"

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->whereEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whereLike(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 2
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    invoke-static {v1, p3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$1100(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 241
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->where(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 242
    return-object p0
.end method

.method public whereLikeArgument(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
    .locals 3
    .param p1, "tableLeft"    # Ljava/lang/String;
    .param p2, "columnLeft"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v1, "left":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    const-string v2, "?"

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->access$1100(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    .line 248
    .local v0, "comparison":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;->where(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)V

    .line 249
    return-object p0
.end method
