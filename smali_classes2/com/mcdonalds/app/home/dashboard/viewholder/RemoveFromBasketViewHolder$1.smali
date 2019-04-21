.class final Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$1;
.super Ljava/lang/Object;
.source "RemoveFromBasketViewHolder.java"

# interfaces
.implements Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$RemoveFromBasketViewHolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

.field final synthetic val$viewHolder:Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$1;->val$viewHolder:Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveClicked()V
    .locals 2

    .prologue
    const-string v0, "onRemoveClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder$1;->val$viewHolder:Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/viewholder/RemoveFromBasketViewHolder;->getOrderOffer()Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;->onRemoveFromBasketClicked(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    .line 43
    return-void
.end method
