.class final Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder$1;
.super Ljava/lang/Object;
.source "NoSelectedStoreViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder;->create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NoSelectedStoreViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;->onSelectStoreClicked()V

    .line 32
    return-void
.end method