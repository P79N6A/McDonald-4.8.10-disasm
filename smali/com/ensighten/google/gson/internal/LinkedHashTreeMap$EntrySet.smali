.class final Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
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
.field final synthetic this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;)V
    .locals 0

    .prologue
    .line 819
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->clear()V

    .line 856
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 836
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
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
    .line 827
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet$1;-><init>(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/ensighten/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 841
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 850
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 845
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v2, p1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v2

    .line 846
    if-eqz v2, :cond_0

    .line 849
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, v2, v1}, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    move v0, v1

    .line 850
    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/ensighten/google/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
