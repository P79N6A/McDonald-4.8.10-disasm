.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$4;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


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
    .line 421
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$4;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    const-string v0, "onRefresh"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/ServiceUtils;->removeOffersCache()V

    .line 425
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/ServiceUtils;->removeAdvertisableCache()V

    .line 426
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$4;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$100(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    .line 427
    return-void
.end method
