.class final Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/LinkedTreeMap;
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
.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node",
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
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 470
    iput-object p0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    iput-object p0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    .line 471
    return-void
.end method

.method constructor <init>(Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;TK;",
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p1, "parent":Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p4, "prev":Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    .line 478
    iput-object p2, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 479
    const/4 v0, 0x1

    iput v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 480
    iput-object p3, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    .line 481
    iput-object p4, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    .line 482
    iput-object p0, p4, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    .line 483
    iput-object p0, p3, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    .line 484
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .line 503
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 504
    check-cast p1, Ljava/util/Map$Entry;

    .line 505
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    const/4 v0, 0x1

    .line 508
    :cond_0
    return v0

    .line 505
    :cond_1
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public final first()Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 526
    .line 527
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    .line 528
    :goto_0
    if-eqz v0, :cond_0

    .line 530
    iget-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0

    .line 532
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
    .line 487
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

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
    .line 491
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final last()Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 539
    .line 540
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    .line 541
    :goto_0
    if-eqz v0, :cond_0

    .line 543
    iget-object v1, v0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0

    .line 545
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
    .line 495
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;, "Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 496
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 497
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
