.class final Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$1;
.super Ljava/lang/Object;
.source "OfferGridViewHolder.java"

# interfaces
.implements Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$OfferGridItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder;->create(Landroid/view/LayoutInflater;Ljava/util/List;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

.field final synthetic val$dataSet:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$1;->val$dataSet:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGridItemClicked(I)V
    .locals 4
    .param p1, "clickPosition"    # I

    .prologue
    const-string v0, "onGridItemClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferGridViewHolder$1;->val$dataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/home/dashboard/DashboardItem;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardItem;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;->onGridItemClick(Lcom/mcdonalds/sdk/modules/models/Offer;)V

    .line 68
    :cond_0
    return-void
.end method
