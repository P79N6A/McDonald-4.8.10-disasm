.class public Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RemoveFromBasketViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;
    }
.end annotation


# instance fields
.field private mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

.field private mViewHolderListener:Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewHolderListener"    # Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->mViewHolderListener:Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;

    .line 31
    const v1, 0x7f1100ff

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, "removeText":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method public static bind(Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 5
    .param p0, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.viewholder.RemoveFromBasketViewHolder"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->setOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    .line 52
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;
    .locals 8
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "dashboardListener"    # Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    .prologue
    const/4 v7, 0x0

    const-string v3, "com.mcdonalds.app.home.dashboard.viewholder.RemoveFromBasketViewHolder"

    const-string v4, "create"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v7, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const v3, 0x7f040058

    invoke-virtual {p0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;

    invoke-direct {v1, v0, v7}, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;-><init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;)V

    .line 39
    .local v1, "viewHolder":Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;
    new-instance v2, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$1;

    invoke-direct {v2, p1, v1}, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;)V

    .line 46
    .local v2, "viewHolderListener":Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->setViewHolderListener(Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;)V

    .line 47
    return-object v1
.end method


# virtual methods
.method public getOrderOffer()Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .locals 2

    .prologue
    const-string v0, "getOrderOffer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    return-object v0
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

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->mViewHolderListener:Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->mViewHolderListener:Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;->onRemoveClicked()V

    .line 67
    :cond_0
    return-void
.end method

.method public setOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 3
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const-string v0, "setOrderOffer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->mOrderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 24
    return-void
.end method

.method public setViewHolderListener(Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;)V
    .locals 3
    .param p1, "viewHolderListener"    # Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;

    .prologue
    const-string v0, "setViewHolderListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->mViewHolderListener:Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;

    .line 60
    return-void
.end method
