.class Lcom/mcdonalds/app/offers/OfferFragment$4;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferFragment;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const-string v7, "onClick"

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$400(Lcom/mcdonalds/app/offers/OfferFragment;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$500(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    .line 530
    .local v4, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :goto_0
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7, v4}, Lcom/mcdonalds/app/offers/OfferFragment;->access$600(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 666
    :cond_0
    :goto_1
    return-void

    .line 528
    .end local v4    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v4

    goto :goto_0

    .line 534
    .restart local v4    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_2
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$700(Lcom/mcdonalds/app/offers/OfferFragment;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 538
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$800(Lcom/mcdonalds/app/offers/OfferFragment;)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$800(Lcom/mcdonalds/app/offers/OfferFragment;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    .line 540
    :cond_3
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->val$rootView:Landroid/view/View;

    const v8, 0x7f11006d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 541
    .local v6, "scrollView":Landroid/widget/ScrollView;
    const/16 v7, 0x82

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_1

    .line 547
    .end local v6    # "scrollView":Landroid/widget/ScrollView;
    :cond_4
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$400(Lcom/mcdonalds/app/offers/OfferFragment;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 549
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 551
    .local v5, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v8

    if-nez v8, :cond_5

    .line 554
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v7

    const v8, 0x7f0905a8

    .line 555
    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v7

    const v8, 0x7f0905a7

    .line 556
    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v7

    const v8, 0x7f0905d4

    new-instance v9, Lcom/mcdonalds/app/offers/OfferFragment$4$2;

    invoke-direct {v9, p0}, Lcom/mcdonalds/app/offers/OfferFragment$4$2;-><init>(Lcom/mcdonalds/app/offers/OfferFragment$4;)V

    .line 557
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v7

    const v8, 0x7f0905ac

    new-instance v9, Lcom/mcdonalds/app/offers/OfferFragment$4$1;

    invoke-direct {v9, p0}, Lcom/mcdonalds/app/offers/OfferFragment$4$1;-><init>(Lcom/mcdonalds/app/offers/OfferFragment$4;)V

    .line 564
    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v7

    .line 574
    invoke-virtual {v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    .line 575
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 583
    .end local v5    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_6
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->basketWillBeDisplayed()V

    .line 585
    const/4 v0, 0x1

    .line 587
    .local v0, "addedToOrder":Z
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$400(Lcom/mcdonalds/app/offers/OfferFragment;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 589
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 590
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Editing of Punchcard offers not supported"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 593
    :cond_7
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$900(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/Order;->removeOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    .line 594
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/Order;->addOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Z

    .line 595
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 596
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 597
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_1

    .line 605
    :cond_8
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 608
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1100(Lcom/mcdonalds/app/offers/OfferFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 609
    .local v3, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_2

    .line 614
    .end local v3    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_9
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1002(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 624
    :cond_a
    :goto_3
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "ADDED_TO_ORDER"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 628
    .local v2, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "EVENT_NAME"

    const-string v8, "couponuse"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    new-instance v7, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    iget-object v8, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 630
    invoke-virtual {v8}, Lcom/mcdonalds/app/offers/OfferFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v7

    const-string v8, "On click"

    .line 631
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v7

    const-string v8, "Apply to mobile order"

    .line 632
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 633
    invoke-static {v8}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getAddToMobileOrder(Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v7

    .line 634
    invoke-virtual {v7, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v7

    .line 635
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v1

    .line 636
    .local v1, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v7, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v7, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 638
    new-instance v7, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v8, "apply_offer_to_order"

    .line 639
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v7

    const-string v8, "offer_id"

    iget-object v9, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 640
    invoke-static {v9}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v7

    const-string v8, "offer_name"

    iget-object v9, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 641
    invoke-static {v9}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v7

    .line 642
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v7

    .line 638
    invoke-static {v7}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 644
    if-eqz v0, :cond_0

    .line 645
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v8}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v8

    const v9, 0x7f09080f

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/offers/OfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 646
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$300(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v8}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1200(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 647
    invoke-static {v9}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcom/mcdonalds/app/offers/OfferFragment$4$3;

    invoke-direct {v10, p0, v4}, Lcom/mcdonalds/app/offers/OfferFragment$4$3;-><init>(Lcom/mcdonalds/app/offers/OfferFragment$4;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 646
    invoke-virtual {v7, v8, v9, v10}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->selectOffersForPurchase(Ljava/lang/String;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_1

    .line 619
    .end local v1    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v2    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/Order;->addOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 620
    const/4 v0, 0x0

    .line 621
    iget-object v7, p0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v7}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/mcdonalds/app/util/UIUtils;->showInvalidDayPartsError(Landroid/content/Context;)V

    goto/16 :goto_3
.end method
