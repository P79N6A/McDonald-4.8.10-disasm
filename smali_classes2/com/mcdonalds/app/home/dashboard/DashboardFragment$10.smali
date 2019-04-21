.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/app/model/Promo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/Promo;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/model/Promo;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$400(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/sdk/AsyncCounter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 704
    if-nez p3, :cond_3

    .line 706
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    new-instance v1, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .line 709
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .line 710
    invoke-static {v3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$600(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;-><init>(Ljava/util/List;Landroid/support/v4/app/FragmentManager;Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;)V

    .line 708
    invoke-static {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$502(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    .line 712
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/widget/HeaderViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$500(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/HeaderViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 713
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/widget/HeaderViewPager;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/mcdonalds/app/widget/HeaderViewPager;->setAutoScroll(ZZ)V

    .line 714
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$700(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V

    .line 722
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$800(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$800(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isSubscribedToOffers()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$10;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$900(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 725
    :cond_2
    return-void

    .line 718
    :cond_3
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
