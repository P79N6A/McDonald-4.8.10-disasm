.class final Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 556
    const/4 v0, -0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    .line 557
    iput-object p0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object p0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 558
    return-void
.end method

.method constructor <init>(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;TK;I",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p1, "parent":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p5, "prev":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 565
    iput-object p2, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 566
    iput p3, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    .line 567
    const/4 v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 568
    iput-object p4, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 569
    iput-object p5, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 570
    iput-object p0, p5, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 571
    iput-object p0, p4, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 572
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .line 591
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 592
    check-cast p1, Ljava/util/Map$Entry;

    .line 593
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    const/4 v0, 0x1

    .line 596
    :cond_0
    return v0

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public final first()Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 614
    .line 615
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 616
    :goto_0
    if-eqz v0, :cond_0

    .line 618
    iget-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0

    .line 620
    :cond_0
    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 601
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final last()Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 627
    .line 628
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    .line 629
    :goto_0
    if-eqz v0, :cond_0

    .line 631
    iget-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0

    .line 633
    :cond_0
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 584
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 585
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
