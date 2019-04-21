.class Lse/emilsjolander/stickylistheaders/DualHashMap;
.super Ljava/lang/Object;
.source "DualHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mKeyToValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TTKey;TTValue;>;"
        }
    .end annotation
.end field

.field mValueToKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TTValue;TTKey;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DualHashMap;, "Lse/emilsjolander/stickylistheaders/DualHashMap<TTKey;TTValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/DualHashMap;->mKeyToValue:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/DualHashMap;->mValueToKey:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)TTValue;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DualHashMap;, "Lse/emilsjolander/stickylistheaders/DualHashMap<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/DualHashMap;->mKeyToValue:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)TTKey;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DualHashMap;, "Lse/emilsjolander/stickylistheaders/DualHashMap<TTKey;TTValue;>;"
    .local p1, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/DualHashMap;->mValueToKey:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DualHashMap;, "Lse/emilsjolander/stickylistheaders/DualHashMap<TTKey;TTValue;>;"
    .local p1, "t1":Ljava/lang/Object;, "TTKey;"
    .local p2, "t2":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/DualHashMap;->remove(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, p2}, Lse/emilsjolander/stickylistheaders/DualHashMap;->removeByValue(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/DualHashMap;->mKeyToValue:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/DualHashMap;->mValueToKey:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DualHashMap;, "Lse/emilsjolander/stickylistheaders/DualHashMap<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/DualHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/DualHashMap;->mValueToKey:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/DualHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/DualHashMap;->mKeyToValue:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public removeByValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lse/emilsjolander/stickylistheaders/DualHashMap;, "Lse/emilsjolander/stickylistheaders/DualHashMap<TTKey;TTValue;>;"
    .local p1, "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/DualHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/DualHashMap;->mKeyToValue:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/DualHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/DualHashMap;->mValueToKey:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method
