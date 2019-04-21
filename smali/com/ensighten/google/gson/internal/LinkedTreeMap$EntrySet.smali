.class Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ensighten/google/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lcom/ensighten/google/gson/internal/LinkedTreeMap;)V
    .locals 0

    .prologue
    .line 580
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/ensighten/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->clear()V

    .line 617
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 597
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/ensighten/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 588
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet$1;-><init>(Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/ensighten/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 602
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 611
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 606
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v2, p1}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v2

    .line 607
    if-eqz v2, :cond_0

    .line 610
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v2, v1}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/ensighten/google/gson/internal/LinkedTreeMap$Node;Z)V

    move v0, v1

    .line 611
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
