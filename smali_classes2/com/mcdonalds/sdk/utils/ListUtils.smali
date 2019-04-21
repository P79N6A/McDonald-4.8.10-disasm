.class public Lcom/mcdonalds/sdk/utils/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIfNotNull(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 29
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/Collection;

    .prologue
    .line 8
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static union(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "original":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "adding":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eq p1, p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 24
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
