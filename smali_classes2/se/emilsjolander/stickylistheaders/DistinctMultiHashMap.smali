.class Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;
.super Ljava/lang/Object;
.source "DistinctMultiHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TItemValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mIDMapper:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper",
            "<TTKey;TTItemValue;>;"
        }
    .end annotation
.end field

.field mKeyToValuesMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<TTItemValue;>;>;"
        }
    .end annotation
.end field

.field mValueToKeyIndexer:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "TTKey;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;, "Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap<TTKey;TTItemValue;>;"
    new-instance v0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$1;

    invoke-direct {v0}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$1;-><init>()V

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;-><init>(Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;)V

    .line 50
    return-void
.end method

.method constructor <init>(Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper",
            "<TTKey;TTItemValue;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;, "Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap<TTKey;TTItemValue;>;"
    .local p1, "idMapper":Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;, "Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper<TTKey;TTItemValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mKeyToValuesMap:Ljava/util/LinkedHashMap;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mValueToKeyIndexer:Ljava/util/LinkedHashMap;

    .line 52
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mIDMapper:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;

    .line 53
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTItemValue;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;, "Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap<TTKey;TTItemValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTItemValue;"
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mIDMapper:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;

    invoke-interface {v2, p1}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;->keyToKeyId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "keyId":Ljava/lang/Object;
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mKeyToValuesMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mKeyToValuesMap:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    invoke-virtual {p0, p2}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "keyForValue":Ljava/lang/Object;, "TTKey;"
    if-eqz v0, :cond_1

    .line 71
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mKeyToValuesMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mIDMapper:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;

    invoke-interface {v3, v0}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;->keyToKeyId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mValueToKeyIndexer:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mIDMapper:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;

    invoke-interface {v3, p2}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;->valueToValueId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mKeyToValuesMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mIDMapper:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;

    invoke-interface {v3, p1}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;->keyToKeyId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->containsValue(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mKeyToValuesMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mIDMapper:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;

    invoke-interface {v3, p1}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;->keyToKeyId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    return-void
.end method

.method protected containsValue(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TTItemValue;>;TTItemValue;)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;, "Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap<TTKey;TTItemValue;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TTItemValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTItemValue;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "itemValue":Ljava/lang/Object;, "TTItemValue;"
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mIDMapper:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;

    invoke-interface {v2, v0}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;->valueToValueId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mIDMapper:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;

    invoke-interface {v3, p2}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;->valueToValueId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 132
    .end local v0    # "itemValue":Ljava/lang/Object;, "TTItemValue;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTItemValue;)TTKey;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;, "Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap<TTKey;TTItemValue;>;"
    .local p1, "value":Ljava/lang/Object;, "TTItemValue;"
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mValueToKeyIndexer:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->mIDMapper:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;

    invoke-interface {v1, p1}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap$IDMapper;->valueToValueId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
