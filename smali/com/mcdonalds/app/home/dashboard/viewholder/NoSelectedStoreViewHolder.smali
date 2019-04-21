.class public Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NoSelectedStoreViewHolder.java"


# instance fields
.field private mMsgView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    const v0, 0x7f11046e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;->mMsgView:Landroid/widget/TextView;

    .line 21
    return-void
.end method

.method public static bind(Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;Z)V
    .locals 6
    .param p0, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;
    .param p1, "isDelivery"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.viewholder.NoSelectedStoreViewHolder"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;->mMsgView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0905b8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 41
    return-void

    .line 39
    :cond_0
    const v0, 0x7f0905b9

    goto :goto_0
.end method

.method public static create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "dashboardListener"    # Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    .prologue
    const/4 v6, 0x0

    const-string v2, "com.mcdonalds.app.home.dashboard.viewholder.NoSelectedStoreViewHolder"

    const-string v3, "create"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v6, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const v2, 0x7f040145

    invoke-virtual {p0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f11046e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    .local v0, "message":Landroid/widget/TextView;
    new-instance v2, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder$1;

    invoke-direct {v2, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    new-instance v2, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;

    invoke-direct {v2, v1}, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method
