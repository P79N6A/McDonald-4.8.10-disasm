.class Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvlIterator"
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
.field private stackTop:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
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
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 662
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 663
    if-nez v1, :cond_0

    .line 674
    :goto_0
    return-object v0

    .line 667
    :cond_0
    iget-object v2, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 668
    iput-object v0, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 669
    iget-object v0, v1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_1
    if-eqz v0, :cond_1

    .line 670
    iput-object v2, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 669
    iget-object v2, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_1

    .line 673
    :cond_1
    iput-object v2, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v0, v1

    .line 674
    goto :goto_0
.end method

.method reset(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    .local p1, "root":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .line 654
    .end local p1    # "root":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz p1, :cond_0

    .line 655
    iput-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 654
    iget-object v0, p1, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 658
    :cond_0
    iput-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 659
    return-void
.end method
