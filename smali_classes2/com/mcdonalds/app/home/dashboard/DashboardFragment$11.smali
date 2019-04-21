.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
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
    .line 728
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageViewFragmentClick(Lcom/mcdonalds/app/model/Promo;)V
    .locals 14
    .param p1, "promo"    # Lcom/mcdonalds/app/model/Promo;

    .prologue
    const-string v9, "onImageViewFragmentClick"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {p0, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 733
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 734
    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 735
    .local v4, "imageName":Ljava/lang/String;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 736
    .local v3, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v9, 0x32

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 737
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Promotional Carousel"

    invoke-static {v9, v10, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 740
    .end local v3    # "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v4    # "imageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getItemLink()Ljava/lang/String;

    move-result-object v6

    .line 742
    .local v6, "link":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "interface.dashboard.newPromoWorkflow"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 744
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$800(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->isLoggedIn()Z

    move-result v9

    if-nez v9, :cond_3

    .line 745
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v9, v6}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$1000(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 746
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 747
    .local v1, "b":Landroid/os/Bundle;
    const-string v9, "GO_TO_MSA"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 748
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-string v10, "msa_not_logged_in"

    invoke-virtual {v9, v10, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->showFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 854
    .end local v1    # "b":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 750
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getOfferId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 751
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 752
    .restart local v1    # "b":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getOfferId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 753
    const-string v9, "GO_TO_OFFER"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 754
    const-string v9, "extra_offer"

    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getOfferId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_2
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v10, Lcom/mcdonalds/app/customer/SignInActivity;

    invoke-virtual {v9, v10, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 770
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_3
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v9, v6}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$1000(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 771
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "interface.skipFirstLoadAddressSelection"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 774
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v9

    if-nez v9, :cond_4

    .line 775
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v10, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const/16 v11, 0x69b

    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivityForResult(Ljava/lang/Class;I)V

    goto :goto_0

    .line 778
    :cond_4
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-string v10, "msa_logged_in"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->showFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :cond_5
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-string v10, "msa_logged_in"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->showFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_6
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getOfferId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 785
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getOfferId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$1100(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 799
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$900(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 800
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->stopRefresh()V

    .line 801
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11$1;

    invoke-direct {v10, p0, v6}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;Ljava/lang/String;)V

    const-wide/16 v12, 0x96

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 847
    :cond_8
    :goto_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 848
    .local v5, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "EVENT_NAME"

    const-string v10, "banner"

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string v9, "bnnum"

    iget-object v10, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v10}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/widget/HeaderViewPager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/app/widget/HeaderViewPager;->getCurrentItem()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    new-instance v9, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v9}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 851
    invoke-virtual {v9, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v9

    .line 852
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 853
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v9, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v9, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto/16 :goto_0

    .line 808
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v5    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v9, v6}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onClickPromoLink(Ljava/lang/String;)V

    goto :goto_1

    .line 812
    :cond_a
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getAssociatedRecipes()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 814
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getAssociatedRecipes()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 815
    .local v7, "recipeId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 816
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$900(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 817
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->stopRefresh()V

    .line 818
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11$2;

    invoke-direct {v10, p0, v7}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11$2;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;Ljava/lang/String;)V

    const-wide/16 v12, 0x96

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 825
    :cond_b
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v9, v7}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onClickPromoProduct(Ljava/lang/String;)V

    goto :goto_1

    .line 829
    .end local v7    # "recipeId":Ljava/lang/String;
    :cond_c
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getCategoryId()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 831
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/Promo;->getCategoryId()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 832
    .local v2, "categoryId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 833
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$900(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 834
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v9}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->stopRefresh()V

    .line 835
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11$3;

    invoke-direct {v10, p0, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11$3;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;Ljava/lang/String;)V

    const-wide/16 v12, 0x96

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 842
    :cond_d
    iget-object v9, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$11;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v9, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$1200(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
