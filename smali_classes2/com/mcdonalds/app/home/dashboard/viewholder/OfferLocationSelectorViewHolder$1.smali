.class final Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$1;
.super Ljava/lang/Object;
.source "OfferLocationSelectorViewHolder.java"

# interfaces
.implements Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->create(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

.field final synthetic val$viewHolder:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$1;->val$viewHolder:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionChange(I)V
    .locals 4
    .param p1, "checkedId"    # I

    .prologue
    const-string v0, "onSelectionChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$1;->val$viewHolder:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->access$000(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;->onOffersTypeSelectorChanged(Landroid/widget/RadioGroup;)V

    .line 33
    return-void
.end method
