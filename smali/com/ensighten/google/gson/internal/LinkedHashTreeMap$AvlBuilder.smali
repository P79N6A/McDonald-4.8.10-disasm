.class final Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final add(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    .local p1, "node":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 715
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 716
    iput v6, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 719
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 720
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 721
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 722
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 726
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 727
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 730
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 731
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 732
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 733
    iget v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 749
    :cond_1
    const/4 v0, 0x4

    :goto_0
    iget v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_5

    .line 750
    iget v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v1, :cond_3

    .line 752
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 753
    iget-object v2, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 754
    iget-object v3, v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 755
    iget-object v4, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 756
    iput-object v2, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 758
    iput-object v3, v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 759
    iput-object v1, v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 760
    iget v4, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 761
    iput-object v2, v3, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 762
    iput-object v2, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 749
    :cond_2
    :goto_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 763
    :cond_3
    iget v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-ne v1, v6, :cond_4

    .line 765
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 766
    iget-object v2, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 767
    iput-object v2, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 769
    iput-object v1, v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 770
    iget v3, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 771
    iput-object v2, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 772
    iput v5, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_1

    .line 773
    :cond_4
    iget v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 774
    iput v5, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_1

    .line 777
    :cond_5
    return-void
.end method

.method final reset(I)V
    .locals 2
    .param p1, "targetSize"    # I

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    const/4 v1, 0x0

    .line 707
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 708
    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 709
    iput v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 710
    iput v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 712
    return-void
.end method

.method final root()Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 781
    iget-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v1, :cond_0

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 784
    :cond_0
    return-object v0
.end method
