.class Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
.super Ljava/lang/Object;
.source "DatabaseQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Comparison"
.end annotation


# instance fields
.field private inColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;",
            ">;"
        }
    .end annotation
.end field

.field private inValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private left:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

.field private operator:Ljava/lang/String;

.field private or:Z

.field private right:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)V
    .locals 0
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "left"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p3, "right"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    .prologue
    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->left:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 583
    iput-object p3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->right:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 584
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->operator:Ljava/lang/String;

    .line 585
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)V
    .locals 0
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "left"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->left:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 595
    iput-object p3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->value:Ljava/lang/String;

    .line 596
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->operator:Ljava/lang/String;

    .line 597
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)V
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "left"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p3, "inColumns"    # [Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    .prologue
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->left:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 589
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->inColumns:Ljava/util/List;

    .line 590
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->operator:Ljava/lang/String;

    .line 591
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Ljava/lang/String;)V
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "left"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p3, "inValues"    # [Ljava/lang/String;

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->left:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 601
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->inValues:Ljava/util/List;

    .line 602
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->operator:Ljava/lang/String;

    .line 603
    return-void
.end method

.method static synthetic access$1100(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->like(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    .prologue
    .line 545
    invoke-static {p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->equals(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->equals(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->or:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .param p1, "x1"    # Z

    .prologue
    .line 545
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->or:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p1, "x1"    # [Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    .prologue
    .line 545
    invoke-static {p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->in(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->in(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    move-result-object v0

    return-object v0
.end method

.method private static equals(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .locals 2
    .param p0, "left"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p1, "right"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    .prologue
    .line 562
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    const-string v1, "="

    invoke-direct {v0, v1, p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)V

    return-object v0
.end method

.method private static equals(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .locals 2
    .param p0, "left"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 566
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    const-string v1, "="

    invoke-direct {v0, v1, p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)V

    return-object v0
.end method

.method private static varargs in(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .locals 2
    .param p0, "left"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p1, "inColumns"    # [Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;

    .prologue
    .line 570
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    const-string v1, "in"

    invoke-direct {v0, v1, p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;)V

    return-object v0
.end method

.method private static varargs in(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .locals 2
    .param p0, "left"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 574
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    const-string v1, "in"

    invoke-direct {v0, v1, p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;[Ljava/lang/String;)V

    return-object v0
.end method

.method private static like(Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;
    .locals 2
    .param p0, "left"    # Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 578
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;

    const-string v1, "like"

    invoke-direct {v0, v1, p0, p1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->left:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->operator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->value:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 610
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->value:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->operator:Ljava/lang/String;

    const-string v6, "in"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 616
    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->inValues:Ljava/util/List;

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 618
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->inValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 619
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 620
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 622
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 611
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->right:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    if-eqz v5, :cond_0

    .line 612
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->right:Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 625
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->inColumns:Ljava/util/List;

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 626
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$Comparison;->inColumns:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;>;"
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 627
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;

    .line 628
    .local v1, "column":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 630
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 634
    .end local v1    # "column":Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$QueryColumn;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/services/data/database/DatabaseQueryBuilder$ComparisonColumn;>;"
    :cond_5
    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
