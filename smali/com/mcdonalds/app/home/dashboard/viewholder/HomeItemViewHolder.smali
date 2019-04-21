.class public Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HomeItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$HomeItemClickListener;
    }
.end annotation


# instance fields
.field private final mClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$HomeItemClickListener;

.field public mIcon:Landroid/widget/ImageView;

.field public mRootView:Landroid/view/View;

.field public mSubtitle:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$HomeItemClickListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "clickListener"    # Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$HomeItemClickListener;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$HomeItemClickListener;

    .line 36
    const v0, 0x7f1100bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mRootView:Landroid/view/View;

    .line 37
    const v0, 0x7f1104a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f1104a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f1104a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;Lcom/mcdonalds/app/home/HomeListItem;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;
    .param p2, "homeListItem"    # Lcom/mcdonalds/app/home/HomeListItem;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.home.dashboard.viewholder.HomeItemViewHolder"

    const-string v3, "bind"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v1, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mcdonalds/app/home/HomeListItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mcdonalds/app/home/HomeListItem;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mcdonalds/app/home/HomeListItem;->getIconImageResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    new-array v1, v7, [Ljava/lang/String;

    const v2, 0x7f090443

    .line 65
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0906c7

    .line 66
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "orderItemsNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/mcdonalds/app/home/HomeListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mRootView:Landroid/view/View;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    :cond_0
    iget-object v1, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/mcdonalds/app/home/HomeListItem;->getDataLayerTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Ljava/util/List;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p0, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p1, "dashboardListener"    # Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/home/dashboard/DashboardItem;",
            ">;)",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .local p2, "dataSet":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/home/dashboard/DashboardItem;>;"
    const/4 v6, 0x0

    const-string v2, "com.mcdonalds.app.home.dashboard.viewholder.HomeItemViewHolder"

    const-string v3, "create"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v6, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    const v2, 0x7f0401a2

    invoke-virtual {p0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "homeItemView":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;

    new-instance v2, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$1;

    invoke-direct {v2, p1, p2}, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Ljava/util/List;)V

    invoke-direct {v1, v0, v2}, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;-><init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$HomeItemClickListener;)V

    .line 55
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    return-object v1
.end method


# virtual methods
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

    .line 81
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$HomeItemClickListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->mClickListener:Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$HomeItemClickListener;

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/home/dashboard/viewholder/HomeItemViewHolder$HomeItemClickListener;->onHomeItemClick(I)V

    .line 84
    :cond_0
    return-void
.end method
