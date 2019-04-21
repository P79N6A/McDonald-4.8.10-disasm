.class Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;
.super Ljava/lang/Object;
.source "OrderSummaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->onAddToFavoritesClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

.field final synthetic val$addFavoritesButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->val$addFavoritesButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "favoriteName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .line 598
    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$1;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 604
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 605
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 607
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "Invalid custom order name"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 678
    :goto_1
    return-void

    .line 592
    .end local v4    # "favoriteName":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    .restart local v4    # "favoriteName":Ljava/lang/String;
    goto :goto_0

    .line 610
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v8

    .line 611
    .local v8, "category":Ljava/lang/String;
    const-string v1, "Save"

    invoke-static {v8, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-static {v8, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v7, 0x0

    .line 615
    .local v7, "bagProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$300(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v10

    .line 616
    .local v10, "favoriteOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v9

    .line 617
    .local v9, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$300(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 618
    .local v17, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 619
    invoke-static/range {v17 .. v17}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getProductFromBasket(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 620
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v3

    .line 618
    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 621
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isBagChargeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBagProductCode()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 623
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNoBagProductCode()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 624
    :cond_3
    move-object/from16 v7, v17

    goto :goto_2

    .line 629
    .end local v17    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_4
    if-eqz v7, :cond_5

    .line 630
    invoke-virtual {v10, v7}, Lcom/mcdonalds/sdk/modules/models/Order;->removeProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 633
    :cond_5
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v13

    .line 634
    .local v13, "orderOfferList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    if-eqz v13, :cond_8

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 635
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 636
    .local v12, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v15

    .line 637
    .local v15, "orderOfferProductList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    if-eqz v15, :cond_6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 638
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 639
    .local v14, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v11

    .line 640
    .local v11, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v16

    .line 641
    .local v16, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->isPromoItem()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v16, :cond_7

    .line 643
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_3

    .line 650
    .end local v11    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .end local v12    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v14    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .end local v15    # "orderOfferProductList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    .end local v16    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    const v18, 0x7f0906c2

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$400(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$400(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    .line 652
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    new-instance v6, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6$2;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$6;)V

    .line 651
    invoke-virtual/range {v1 .. v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addFavoriteProductsReturningItems(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_1
.end method
