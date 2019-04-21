.class public Lcom/mcdonalds/app/account/AddressesSwipeCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "AddressesSwipeCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/account/AddressesSwipeCallback$SwipeListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/mcdonalds/app/account/AddressesSwipeCallback$SwipeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const-string v2, "getMovementFlags"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "dragFlags":I
    const/16 v1, 0x20

    .line 23
    .local v1, "swipeFlags":I
    invoke-static {v0, v1}, Lcom/mcdonalds/app/account/AddressesSwipeCallback;->makeMovementFlags(II)I

    move-result v2

    return v2
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 2

    .prologue
    const-string v0, "isItemViewSwipeEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    const/4 v5, 0x1

    const-string v1, "onChildDraw"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p4}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p5}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    if-ne p6, v5, :cond_0

    instance-of v1, p3, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 48
    check-cast p3, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;

    .end local p3    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p3, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->container:Landroid/view/View;

    .line 49
    .local v0, "container":Landroid/view/View;
    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 51
    .end local v0    # "container":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onMove"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return v3
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    const-string v0, "onSwiped"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesSwipeCallback;->listener:Lcom/mcdonalds/app/account/AddressesSwipeCallback$SwipeListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/account/AddressesSwipeCallback;->listener:Lcom/mcdonalds/app/account/AddressesSwipeCallback$SwipeListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/account/AddressesSwipeCallback$SwipeListener;->onItemDismissed(I)V

    .line 36
    :cond_0
    return-void
.end method
