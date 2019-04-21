.class Lcom/mcdonalds/app/home/HomeFragment$9;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$9;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v4, "onItemClick"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    add-int/lit8 v1, p3, -0x1

    .line 545
    .local v1, "index":I
    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment$9;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/home/HomeFragment;->access$400(Lcom/mcdonalds/app/home/HomeFragment;)I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 546
    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment$9;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/home/HomeFragment;->access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mcdonalds/app/home/HomeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/home/HomeListItem;

    .line 547
    .local v2, "item":Lcom/mcdonalds/app/home/HomeListItem;
    const/4 v0, 0x0

    .line 548
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListItem;->getAttributes()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 549
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 550
    .restart local v0    # "extras":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListItem;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 551
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListItem;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 554
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcdmobileapp://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 555
    if-nez v0, :cond_1

    .line 556
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 558
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    const-string v4, "order"

    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment$9;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/home/HomeFragment;->access$300(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 560
    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment$9;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    const-class v5, Lcom/mcdonalds/app/ordering/menu/LastOrderActivity;

    invoke-virtual {v4, v5, v0}, Lcom/mcdonalds/app/home/HomeFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 593
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "item":Lcom/mcdonalds/app/home/HomeListItem;
    :cond_2
    :goto_1
    return-void

    .line 562
    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v2    # "item":Lcom/mcdonalds/app/home/HomeListItem;
    :cond_3
    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment$9;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/mcdonalds/app/home/HomeFragment;->openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 564
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v4

    const-string v5, "menu_grid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 566
    sget-object v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v5, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v6, "On click"

    .line 568
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    const-string v6, "/home"

    .line 569
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    const-string v6, "Food"

    .line 570
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    .line 571
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v5

    .line 566
    invoke-static {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_1

    .line 573
    :cond_4
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v4

    const-string v5, "start_order"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 575
    sget-object v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v5, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v6, "On click"

    .line 577
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    const-string v6, "/home"

    .line 578
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    const-string v6, "Food"

    .line 579
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    .line 580
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v5

    .line 575
    invoke-static {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_1

    .line 582
    :cond_5
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListItem;->getLink()Ljava/lang/String;

    move-result-object v4

    const-string v5, "store_locator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 584
    sget-object v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v5, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v6, "On click"

    .line 586
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    const-string v6, "/home"

    .line 587
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    const-string v6, "Restaurant Locator"

    .line 588
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    .line 589
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v5

    .line 584
    invoke-static {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto/16 :goto_1
.end method
