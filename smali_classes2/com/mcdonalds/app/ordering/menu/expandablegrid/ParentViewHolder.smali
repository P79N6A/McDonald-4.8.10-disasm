.class public Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ParentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;
    }
.end annotation


# instance fields
.field private mExpanded:Z

.field private mParentListItemExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->mExpanded:Z

    .line 46
    return-void
.end method


# virtual methods
.method protected collapseView()V
    .locals 2

    .prologue
    const-string v0, "collapseView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->setExpanded(Z)V

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->onExpansionToggled(Z)V

    .line 159
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->mParentListItemExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->mParentListItemExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;->onParentListItemCollapsed(I)V

    .line 162
    :cond_0
    return-void
.end method

.method protected expandView()V
    .locals 2

    .prologue
    const-string v0, "expandView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->setExpanded(Z)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->onExpansionToggled(Z)V

    .line 147
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->mParentListItemExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->mParentListItemExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;->onParentListItemExpanded(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->collapseView()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->expandView()V

    goto :goto_0
.end method

.method public onExpansionToggled(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .prologue
    const-string v0, "onExpansionToggled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public setExpanded(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .prologue
    const-string v0, "setExpanded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->mExpanded:Z

    .line 74
    return-void
.end method

.method public setMainItemClickToExpand()V
    .locals 2

    .prologue
    const-string v0, "setMainItemClickToExpand"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public setParentListItemExpandCollapseListener(Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;)V
    .locals 3
    .param p1, "parentListItemExpandCollapseListener"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;

    .prologue
    const-string v0, "setParentListItemExpandCollapseListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->mParentListItemExpandCollapseListener:Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder$ParentListItemExpandCollapseListener;

    .line 107
    return-void
.end method

.method public shouldItemViewClickToggleExpansion()Z
    .locals 2

    .prologue
    const-string v0, "shouldItemViewClickToggleExpansion"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method
