.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$5;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$5;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const-string v0, "onScrollStateChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 439
    if-nez p2, :cond_0

    .line 440
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$5;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/widget/HeaderViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->onResume()V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$5;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/widget/HeaderViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/HeaderViewPager;->onPause()V

    goto :goto_0
.end method
