.class public abstract Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExpandableRecyclerAdapter.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PVH:",
        "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;",
        "CVH:",
        "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ChildViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;"
    }
.end annotation


# instance fields
.field private mAttachedRecyclerViewPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;

.field protected mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mParentItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mAttachedRecyclerViewPool:Ljava/util/List;

    .line 71
    return-void
.end method

.method private collapseParentListItem(Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;IZ)V
    .locals 9
    .param p1, "parentWrapper"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    .param p2, "parentIndex"    # I
    .param p3, "collapseTriggeredByListItemClick"    # Z

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const/4 v8, 0x0

    const-string v4, "collapseParentListItem"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 331
    invoke-virtual {p1, v8}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->setExpanded(Z)V

    .line 333
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->getChildItemList()Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "childItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    if-eqz v0, :cond_1

    .line 335
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 336
    .local v1, "childListItemCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 337
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mItemList:Ljava/util/List;

    add-int v5, p2, v3

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 336
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 340
    :cond_0
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v4, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->notifyItemRangeRemoved(II)V

    .line 343
    .end local v1    # "childListItemCount":I
    .end local v3    # "i":I
    :cond_1
    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;

    if-eqz v4, :cond_2

    .line 344
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->getExpandedItemCount(I)I

    move-result v2

    .line 345
    .local v2, "expandedCountBeforePosition":I
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;

    sub-int v5, p2, v2

    invoke-interface {v4, v5}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;->onListItemCollapsed(I)V

    .line 348
    .end local v0    # "childItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    .end local v2    # "expandedCountBeforePosition":I
    :cond_2
    return-void
.end method

.method private expandParentListItem(Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;IZ)V
    .locals 9
    .param p1, "parentWrapper"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    .param p2, "parentIndex"    # I
    .param p3, "expansionTriggeredByListItemClick"    # Z

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const/4 v8, 0x1

    const-string v4, "expandParentListItem"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v8

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 300
    invoke-virtual {p1, v8}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->setExpanded(Z)V

    .line 302
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->getChildItemList()Ljava/util/List;

    move-result-object v0

    .line 303
    .local v0, "childItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 305
    .local v1, "childListItemCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 306
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mItemList:Ljava/util/List;

    add-int v5, p2, v3

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    :cond_0
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v4, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->notifyItemRangeInserted(II)V

    .line 312
    .end local v1    # "childListItemCount":I
    .end local v3    # "i":I
    :cond_1
    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;

    if-eqz v4, :cond_2

    .line 313
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->getExpandedItemCount(I)I

    move-result v2

    .line 314
    .local v2, "expandedCountBeforePosition":I
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;

    invoke-interface {v4, p2}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;->onListItemExpanded(I)V

    .line 317
    .end local v0    # "childItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    .end local v2    # "expandedCountBeforePosition":I
    :cond_2
    return-void
.end method

.method private getExpandedItemCount(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const/4 v0, 0x0

    const-string v3, "getExpandedItemCount"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    if-nez p1, :cond_1

    .line 369
    :cond_0
    return v0

    .line 362
    :cond_1
    const/4 v0, 0x0

    .line 363
    .local v0, "expandedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->getListItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 365
    .local v2, "listItem":Ljava/lang/Object;
    instance-of v3, v2, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    if-nez v3, :cond_2

    .line 366
    add-int/lit8 v0, v0, 0x1

    .line 363
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const-string v0, "getItemCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mItemList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "getItemViewType"

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v1

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->getListItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 206
    .local v0, "listItem":Ljava/lang/Object;
    instance-of v3, v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    if-eqz v3, :cond_0

    .line 211
    :goto_0
    return v1

    .line 208
    :cond_0
    if-nez v0, :cond_1

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Null object added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v1, v2

    .line 211
    goto :goto_0
.end method

.method protected getListItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "getListItem"

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 281
    .local v0, "indexInRange":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 282
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 284
    :goto_1
    return-object v1

    .end local v0    # "indexInRange":Z
    :cond_0
    move v0, v1

    .line 280
    goto :goto_0

    .line 284
    .restart local v0    # "indexInRange":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const-string v0, "onAttachedToRecyclerView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 256
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mAttachedRecyclerViewPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public abstract onBindChildViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/ChildViewHolder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCVH;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onBindParentViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;ILcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPVH;I",
            "Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;",
            ")V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const-string v3, "onBindViewHolder"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->getListItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "listItem":Ljava/lang/Object;
    instance-of v3, v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->getCategory()Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 117
    check-cast v1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;

    .line 119
    .local v1, "parentViewHolder":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;, "TPVH;"
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->shouldItemViewClickToggleExpansion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->setMainItemClickToExpand()V

    :cond_0
    move-object v2, v0

    .line 123
    check-cast v2, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    .line 124
    .local v2, "parentWrapper":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->isExpanded()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->setExpanded(Z)V

    .line 125
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;->getParentListItem()Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    move-result-object v3

    invoke-virtual {p0, v1, p2, v3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->onBindParentViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;ILcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;)V

    .line 132
    .end local v1    # "parentViewHolder":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;, "TPVH;"
    .end local v2    # "parentWrapper":Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;
    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-void

    .line 127
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    if-nez v0, :cond_2

    .line 128
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Incorrect ViewHolder found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_2
    check-cast p1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ChildViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->onBindChildViewHolder(Lcom/mcdonalds/app/ordering/menu/expandablegrid/ChildViewHolder;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract onCreateChildViewHolder(Landroid/view/ViewGroup;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/ChildViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TCVH;"
        }
    .end annotation
.end method

.method public abstract onCreateParentViewHolder(Landroid/view/ViewGroup;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TPVH;"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const/4 v4, 0x1

    const-string v1, "onCreateViewHolder"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    if-nez p2, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->onCreateParentViewHolder(Landroid/view/ViewGroup;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;

    move-result-object v0

    .line 93
    .local v0, "pvh":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;, "TPVH;"
    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->setParentListItemExpandCollapseListener(Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;)V

    .line 96
    .end local v0    # "pvh":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;, "TPVH;"
    :goto_0
    return-object v0

    .line 95
    :cond_0
    if-ne p2, v4, :cond_1

    .line 96
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->onCreateChildViewHolder(Landroid/view/ViewGroup;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/ChildViewHolder;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Incorrect ViewType found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const-string v0, "onDetachedFromRecyclerView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 270
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mAttachedRecyclerViewPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public onParentListItemCollapsed(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const/4 v5, 0x1

    const-string v1, "onParentListItemCollapsed"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->getListItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "listItem":Ljava/lang/Object;
    instance-of v1, v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    .end local v0    # "listItem":Ljava/lang/Object;
    invoke-direct {p0, v0, p1, v5}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->collapseParentListItem(Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;IZ)V

    .line 243
    :cond_0
    return-void
.end method

.method public onParentListItemExpanded(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const/4 v5, 0x1

    const-string v1, "onParentListItemExpanded"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->getListItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "listItem":Ljava/lang/Object;
    instance-of v1, v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;

    .end local v0    # "listItem":Ljava/lang/Object;
    invoke-direct {p0, v0, p1, v5}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->expandParentListItem(Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;IZ)V

    .line 228
    :cond_0
    return-void
.end method

.method public setExpandCollapseListener(Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;)V
    .locals 3
    .param p1, "mExpandCollapseListener"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    const-string v0, "setExpandCollapseListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;

    .line 75
    return-void
.end method

.method public setmParentItemList(Ljava/util/List;Z)V
    .locals 4
    .param p2, "filterFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;, "Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter<TPVH;TCVH;>;"
    .local p1, "parentItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryExpandable;>;"
    const-string v0, "setmParentItemList"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mParentItemList:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mParentItemList:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapterHelper;->generateParentChildItemList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter;->mItemList:Ljava/util/List;

    .line 36
    return-void
.end method
