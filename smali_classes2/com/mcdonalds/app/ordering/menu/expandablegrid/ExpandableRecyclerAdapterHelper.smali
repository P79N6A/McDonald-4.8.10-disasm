.class public Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapterHelper;
.super Ljava/lang/Object;
.source "ExpandableRecyclerAdapterHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateParentChildItemList(Ljava/util/List;Z)Ljava/util/List;
    .locals 13
    .param p1, "filterFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "parentItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;>;"
    const/4 v12, 0x1

    const/4 v7, 0x0

    const-string v8, "com.mcdonalds.app.ordering.menu.expandablegrid.ExpandableRecyclerAdapterHelper"

    const-string v9, "generateParentChildItemList"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    new-instance v11, Ljava/lang/Boolean;

    invoke-direct {v11, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v11, v10, v12

    invoke-static {v7, v8, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v6, "parentWrapperList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 25
    .local v4, "parentListItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 26
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    .line 27
    .local v3, "parentListItem":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    move-object v5, v3

    .line 29
    .local v5, "parentWrapper":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->isInitiallyExpanded()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p1, :cond_1

    .line 32
    :cond_0
    invoke-virtual {v5, v12}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->setExpanded(Z)V

    .line 34
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->getChildItemList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 35
    .local v0, "childListItemCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 36
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->getChildItemList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25
    .end local v0    # "childListItemCount":I
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v3    # "parentListItem":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    .end local v5    # "parentWrapper":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    :cond_2
    return-object v6
.end method
