.class public Lcom/mcdonalds/app/ordering/summary/OrderReceipt;
.super Ljava/lang/Object;
.source "OrderReceipt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDashedDivider(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ordering.summary.OrderReceipt"

    const-string v4, "addDashedDivider"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 565
    .local v0, "dashedLine":Landroid/widget/ImageView;
    const v2, 0x7f0200fb

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 568
    invoke-static {p0, v7}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 570
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 573
    return-void
.end method

.method private static addOrIncrement(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "promotionalProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    .local p1, "productViews":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.ordering.summary.OrderReceipt"

    const-string v5, "addOrIncrement"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 552
    .local v2, "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 553
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 556
    .local v1, "index":I
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 557
    .local v0, "existing":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getQuantity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getQuantity()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setQuantity(Ljava/lang/Integer;)V

    .line 558
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getTotalValue()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getTotalValue()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/ProductView;->setTotalValue(Ljava/lang/Double;)V

    goto :goto_0

    .line 561
    .end local v0    # "existing":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v1    # "index":I
    .end local v2    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_1
    return-void
.end method

.method public static configureOrderReceiptForDisplay(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 47
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/widget/LinearLayout;
    .param p3, "storeAddress"    # Ljava/lang/String;
    .param p4, "paymentName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v4, "com.mcdonalds.app.ordering.summary.OrderReceipt"

    const-string v5, "configureOrderReceiptForDisplay"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    aput-object p2, v9, v10

    const/4 v10, 0x3

    aput-object p3, v9, v10

    const/4 v10, 0x4

    aput-object p4, v9, v10

    invoke-static {v2, v4, v5, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 61
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v6

    .line 64
    .local v6, "currencyFormatter":Ljava/text/NumberFormat;
    new-instance v39, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;

    const v2, 0x7f040167

    const/4 v4, 0x0

    .line 65
    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v39

    invoke-direct {v0, v2}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 68
    .local v39, "storeHeader":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    invoke-virtual/range {v39 .. v39}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getQuantity()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-virtual/range {v39 .. v39}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v17

    .line 72
    .local v17, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v38

    .line 74
    .local v38, "storeFavoriteName":Ljava/lang/String;
    :goto_0
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v18

    .line 76
    .local v18, "currentStoreName":Ljava/lang/String;
    :goto_1
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 77
    invoke-virtual/range {v39 .. v39}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual/range {v39 .. v39}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .end local v18    # "currentStoreName":Ljava/lang/String;
    .end local v38    # "storeFavoriteName":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-virtual/range {v39 .. v39}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-virtual/range {v39 .. v39}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-static/range {p1 .. p2}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->addDashedDivider(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 90
    const/16 v16, 0x0

    .line 92
    .local v16, "bagProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isBagChargeEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 94
    .local v14, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNoBagProductCode()I

    move-result v4

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 95
    move-object/from16 v16, v14

    goto :goto_3

    .line 73
    .end local v14    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v16    # "bagProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    const-string v38, ""

    goto :goto_0

    .line 74
    .restart local v38    # "storeFavoriteName":Ljava/lang/String;
    :cond_3
    const-string v18, ""

    goto :goto_1

    .line 80
    .restart local v18    # "currentStoreName":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v39 .. v39}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 99
    .end local v18    # "currentStoreName":Ljava/lang/String;
    .end local v38    # "storeFavoriteName":Ljava/lang/String;
    .restart local v16    # "bagProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_5
    if-eqz v16, :cond_6

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->removeProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 104
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getMostRecentOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    const/4 v4, 0x0

    .line 103
    invoke-static {v2, v4}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->getProductsFromOrderResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Z)Ljava/util/List;

    move-result-object v45

    .line 107
    .local v45, "totalizeProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getMostRecentOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    const/4 v4, 0x1

    .line 106
    invoke-static {v2, v4}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->getProductsFromOrderResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Z)Ljava/util/List;

    move-result-object v46

    .line 110
    .local v46, "totalizeProductsForOffer":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v33, "orderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v28, "offerProductsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 120
    .local v30, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v31

    .line 121
    .local v31, "orderOfferProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    if-eqz v31, :cond_7

    .line 123
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v2

    sget-object v5, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-eq v2, v5, :cond_7

    .line 127
    const/16 v25, 0x0

    .local v25, "i":I
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v37

    .local v37, "size":I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_7

    .line 128
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v36

    .line 130
    .local v36, "selectedProductOption":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v36, :cond_8

    .line 132
    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_8
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 137
    .end local v25    # "i":I
    .end local v30    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v31    # "orderOfferProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    .end local v36    # "selectedProductOption":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v37    # "size":I
    :cond_9
    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 138
    .local v34, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 139
    .local v8, "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    const/16 v26, 0x0

    .line 140
    .local v26, "isNoBagProduct":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getMostRecentOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderDate()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v8, v2, v1}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->getOrderProduct(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v7

    .line 141
    .local v7, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowBagCharges()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 142
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNoBagProductCode()I

    move-result v4

    if-ne v2, v4, :cond_b

    .line 143
    const/16 v26, 0x1

    .line 147
    :cond_b
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v2

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->DeliveryFee:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    if-ne v2, v4, :cond_c

    .line 148
    const/16 v26, 0x1

    .line 151
    :cond_c
    if-eqz v7, :cond_d

    .line 152
    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->attachProductViewToOrderProduct(Lcom/mcdonalds/sdk/modules/models/ProductView;)V

    .line 154
    :cond_d
    if-nez v26, :cond_a

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p0

    .line 155
    invoke-static/range {v2 .. v8}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->layoutIndividualProduct(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lcom/mcdonalds/sdk/modules/models/Order;Ljava/text/NumberFormat;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/ProductView;)V

    goto :goto_5

    .line 160
    .end local v7    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v8    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v26    # "isNoBagProduct":Z
    :cond_e
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .local v32, "orderOfferProductsToDisplay":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface/range {v46 .. v46}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 162
    .restart local v8    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    move-object/from16 v0, v32

    invoke-static {v0, v8}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->findOrderProduct(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/ProductView;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v14

    .line 163
    .restart local v14    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v9, p1

    move-object v10, v3

    move-object/from16 v11, p2

    move-object/from16 v12, p0

    move-object v13, v6

    move-object v15, v8

    .line 164
    invoke-static/range {v9 .. v15}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->layoutIndividualProduct(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lcom/mcdonalds/sdk/modules/models/Order;Ljava/text/NumberFormat;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/ProductView;)V

    goto :goto_6

    .line 174
    .end local v8    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v14    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_f
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v4, "modules.ordering.doNotShowTaxWithTotal"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v24

    .line 175
    .local v24, "hideTotalTax":Z
    if-nez v24, :cond_10

    .line 176
    new-instance v40, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;

    const v2, 0x7f040167

    const/4 v4, 0x0

    .line 177
    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    invoke-direct {v0, v2}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 181
    .local v40, "taxElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    invoke-virtual/range {v40 .. v40}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTopBorder()Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-virtual/range {v40 .. v40}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getBottomBorder()Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual/range {v40 .. v40}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getQuantity()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    invoke-virtual/range {v40 .. v40}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    invoke-virtual/range {v40 .. v40}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f090601

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalTax()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    .line 189
    .local v41, "taxPrice":Ljava/lang/String;
    invoke-virtual/range {v40 .. v40}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual/range {v40 .. v40}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    invoke-static/range {p1 .. p2}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->addDashedDivider(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 196
    .end local v40    # "taxElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    .end local v41    # "taxPrice":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 198
    new-instance v19, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;

    const v2, 0x7f040167

    const/4 v4, 0x0

    .line 199
    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 203
    .local v19, "deliveryElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTopBorder()Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getBottomBorder()Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getQuantity()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDeliveryFee()Ljava/lang/Double;

    move-result-object v42

    .line 210
    .local v42, "total":Ljava/lang/Double;
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f0901cf

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 211
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->hasDeliveryFeeOffer()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 217
    new-instance v21, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;

    const v2, 0x7f040167

    const/4 v4, 0x0

    .line 218
    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 222
    .local v21, "deliveryFeeOfferElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTopBorder()Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getBottomBorder()Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 224
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getQuantity()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDiscountedDeliveryCharge()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    .line 229
    .local v20, "deliveryFeeDiscount":Ljava/lang/Double;
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryChargeOfferName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    .end local v19    # "deliveryElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    .end local v20    # "deliveryFeeDiscount":Ljava/lang/Double;
    .end local v21    # "deliveryFeeOfferElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    .end local v42    # "total":Ljava/lang/Double;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 237
    .local v27, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual/range {v27 .. v27}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v31

    .line 238
    .restart local v31    # "orderOfferProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 239
    new-instance v29, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;

    const v2, 0x7f040167

    const/4 v5, 0x0

    .line 240
    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 244
    .local v29, "orderDiscountElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    invoke-virtual/range {v29 .. v29}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTopBorder()Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 245
    invoke-virtual/range {v29 .. v29}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getBottomBorder()Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 246
    invoke-virtual/range {v29 .. v29}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getQuantity()Landroid/widget/TextView;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-virtual/range {v29 .. v29}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getMostRecentOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDeliveryFee()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    sub-double v22, v10, v12

    .line 256
    .local v22, "discount":D
    :goto_8
    invoke-virtual/range {v29 .. v29}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual/range {v29 .. v29}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v2

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const-wide/16 v10, 0x0

    cmpl-double v2, v22, v10

    if-nez v2, :cond_13

    .line 259
    invoke-virtual/range {v29 .. v29}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    :cond_13
    invoke-virtual/range {v29 .. v29}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 254
    .end local v22    # "discount":D
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getMostRecentOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v12

    sub-double v22, v10, v12

    .restart local v22    # "discount":D
    goto :goto_8

    .line 267
    .end local v22    # "discount":D
    .end local v27    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v29    # "orderDiscountElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    .end local v31    # "orderOfferProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    :cond_15
    new-instance v43, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;

    const v2, 0x7f040167

    const/4 v4, 0x0

    .line 268
    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v43

    invoke-direct {v0, v2}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 272
    .local v43, "totalElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    invoke-virtual/range {v43 .. v43}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTopBorder()Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-virtual/range {v43 .. v43}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getBottomBorder()Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 274
    invoke-virtual/range {v43 .. v43}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getQuantity()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-virtual/range {v43 .. v43}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getMostRecentOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v42

    .line 279
    .restart local v42    # "total":Ljava/lang/Double;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getMostRecentOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getTotalDiscount()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmpl-double v2, v4, v10

    if-eqz v2, :cond_17

    .line 280
    invoke-virtual/range {v43 .. v43}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090602

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09017d

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_9
    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    .line 285
    .local v44, "totalPrice":Ljava/lang/String;
    invoke-virtual/range {v43 .. v43}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual/range {v43 .. v43}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->isZeroPriced()Z

    move-result v2

    if-nez v2, :cond_16

    .line 291
    new-instance v35, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;

    const v2, 0x7f040167

    const/4 v4, 0x0

    .line 292
    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 295
    .local v35, "paymentElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getQuantity()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f0905f2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 300
    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    .end local v35    # "paymentElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    :cond_16
    return-void

    .line 282
    .end local v44    # "totalPrice":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v43 .. v43}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f090602

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9
.end method

.method private static findOrderProduct(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/ProductView;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 6
    .param p1, "productView"    # Lcom/mcdonalds/sdk/modules/models/ProductView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ")",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;"
        }
    .end annotation

    .prologue
    .local p0, "orderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.summary.OrderReceipt"

    const-string v3, "findOrderProduct"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-static {p0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 364
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 360
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    move-object v0, v1

    .line 364
    goto :goto_0
.end method

.method private static getOrderProduct(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 18
    .param p1, "productView"    # Lcom/mcdonalds/sdk/modules/models/ProductView;
    .param p2, "orderDate"    # Ljava/util/Date;
    .param p3, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            "Ljava/util/Date;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            ")",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;"
        }
    .end annotation

    .prologue
    .local p0, "orderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v13, 0x0

    const-string v14, "com.mcdonalds.app.ordering.summary.OrderReceipt"

    const-string v15, "getOrderProduct"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p0, v16, v17

    const/16 v17, 0x1

    aput-object p1, v16, v17

    const/16 v17, 0x2

    aput-object p2, v16, v17

    const/16 v17, 0x3

    aput-object p3, v16, v17

    invoke-static/range {v13 .. v16}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-static/range {p0 .. p1}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->findOrderProduct(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/ProductView;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v10

    .line 308
    .local v10, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-nez v10, :cond_2

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Ljava/util/Date;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v11

    .line 310
    .local v11, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getQuantity()Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v10

    .line 312
    if-eqz v10, :cond_2

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v13}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v5

    .line 315
    .local v5, "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_0

    .line 316
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v3

    .line 317
    .local v3, "choiceProductView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 318
    .local v2, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v13, v3, v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->getOrderProduct(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    .line 319
    .local v4, "choiceSelectionOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 315
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 322
    .end local v2    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v3    # "choiceProductView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v4    # "choiceSelectionOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v5    # "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    .end local v9    # "i":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getCustomizations()Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v13}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getCustomizations()Ljava/util/ArrayList;

    move-result-object v12

    .line 324
    .local v12, "productViewCustomizations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_2

    .line 325
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 326
    .local v7, "customizationProductView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v13, v7, v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->getOrderProduct(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    .line 328
    .local v6, "customizationOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v8

    .line 329
    .local v8, "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    if-nez v8, :cond_1

    .line 330
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 331
    .restart local v8    # "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {v10, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 333
    :cond_1
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 339
    .end local v6    # "customizationOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v7    # "customizationProductView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v8    # "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v9    # "i":I
    .end local v11    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v12    # "productViewCustomizations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    :cond_2
    return-object v10
.end method

.method private static getProductsFromOrderResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Z)Ljava/util/List;
    .locals 8
    .param p0, "orderResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p1, "IsOffer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ordering.summary.OrderReceipt"

    const-string v4, "getProductsFromOrderResponse"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v1, "promotionalProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    if-eqz p1, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getPromotionalItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/PromotionView;

    .line 538
    .local v0, "promotionView":Lcom/mcdonalds/sdk/modules/models/PromotionView;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getProductSet()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->addOrIncrement(Ljava/util/ArrayList;Ljava/util/List;)V

    goto :goto_0

    .line 543
    .end local v0    # "promotionView":Lcom/mcdonalds/sdk/modules/models/PromotionView;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 544
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->addOrIncrement(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 547
    :cond_1
    return-object v1
.end method

.method private static layoutIndividualProduct(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lcom/mcdonalds/sdk/modules/models/Order;Ljava/text/NumberFormat;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/ProductView;)V
    .locals 38
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layout"    # Landroid/widget/LinearLayout;
    .param p3, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p4, "currencyFormatter"    # Ljava/text/NumberFormat;
    .param p5, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p6, "productView"    # Lcom/mcdonalds/sdk/modules/models/ProductView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v31, 0x0

    const-string v34, "com.mcdonalds.app.ordering.summary.OrderReceipt"

    const-string v35, "layoutIndividualProduct"

    const/16 v36, 0x7

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object p0, v36, v37

    const/16 v37, 0x1

    aput-object p1, v36, v37

    const/16 v37, 0x2

    aput-object p2, v36, v37

    const/16 v37, 0x3

    aput-object p3, v36, v37

    const/16 v37, 0x4

    aput-object p4, v36, v37

    const/16 v37, 0x5

    aput-object p5, v36, v37

    const/16 v37, 0x6

    aput-object p6, v36, v37

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    if-nez p5, :cond_0

    .line 531
    :goto_0
    return-void

    .line 400
    :cond_0
    new-instance v11, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;

    const v31, 0x7f040167

    const/16 v34, 0x0

    .line 401
    move-object/from16 v0, p1

    move/from16 v1, v31

    move-object/from16 v2, p2

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 405
    .local v11, "element":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTopBorder()Landroid/view/View;

    move-result-object v31

    const/16 v34, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getBottomBorder()Landroid/view/View;

    move-result-object v31

    const/16 v34, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    const v31, 0x7f09039e

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 412
    .local v16, "offerIndication":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v31

    if-nez v31, :cond_2

    const-string v28, ""

    .line 413
    .local v28, "qtd":Ljava/lang/String;
    :goto_1
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getQuantity()Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v31

    if-eqz v31, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getActionName()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_3

    .line 416
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v31

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " <b>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</b> <br />"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {p5 .. p5}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :goto_2
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionOnOrderingPages()Z

    move-result v31

    if-nez v31, :cond_4

    .line 421
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v31

    invoke-static/range {p5 .. p5}, Lcom/mcdonalds/app/util/OrderProductUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p5

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_3
    invoke-static/range {p5 .. p5}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v20

    .line 428
    .local v20, "price":D
    if-eqz p6, :cond_1

    .line 430
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v23

    .line 431
    .local v23, "promotion":Lcom/mcdonalds/sdk/modules/models/Promotion;
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getDiscountAmount()Ljava/lang/Double;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    const-wide/16 v36, 0x0

    cmpl-double v31, v34, v36

    if-lez v31, :cond_1

    .line 433
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getTotalValue()Ljava/lang/Double;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 434
    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getOriginalPrice()Ljava/lang/Double;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    invoke-virtual/range {v23 .. v23}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getDiscountAmount()Ljava/lang/Double;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v36

    sub-double v26, v34, v36

    .line 436
    .local v26, "promotionPrice":D
    const-wide/16 v34, 0x0

    cmpl-double v31, v26, v34

    if-nez v31, :cond_1

    .line 437
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f09036f

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v17

    .line 439
    .local v17, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v22

    .line 440
    .local v22, "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowDownCharge()Z

    move-result v4

    .line 441
    .local v4, "allowDownCharge":Z
    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalCustomizationsPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)Ljava/lang/Double;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 447
    .end local v4    # "allowDownCharge":Z
    .end local v17    # "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    .end local v22    # "priceType":Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .end local v23    # "promotion":Lcom/mcdonalds/sdk/modules/models/Promotion;
    .end local v26    # "promotionPrice":D
    :cond_1
    move-object/from16 v0, p4

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v19

    .line 448
    .local v19, "priceString":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v10

    .line 449
    .local v10, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isBagChargeEnabled()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 450
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isBagChargeAdded()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 451
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBagProductCode()I

    move-result v31

    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    .line 452
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v31

    const/16 v34, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    :goto_4
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v31

    if-eqz v31, :cond_c

    .line 466
    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v31

    if-eqz v31, :cond_7

    .line 467
    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 468
    .local v14, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v30, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;

    const v31, 0x7f040169

    const/16 v35, 0x0

    .line 469
    move-object/from16 v0, p1

    move/from16 v1, v31

    move-object/from16 v2, p2

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout;

    invoke-direct/range {v30 .. v31}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 472
    .local v30, "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getTitle()Landroid/widget/TextView;

    move-result-object v31

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    invoke-static {v14}, Lcom/mcdonalds/app/ordering/ProductUtils;->getNameDetailsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v15

    .line 474
    .local v15, "nameDetails":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_6

    .line 475
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getDetails()Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :goto_6
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getInfo()Landroid/widget/TextView;

    move-result-object v31

    invoke-static {v14}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 412
    .end local v10    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v14    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v15    # "nameDetails":Ljava/lang/String;
    .end local v19    # "priceString":Ljava/lang/String;
    .end local v20    # "price":D
    .end local v28    # "qtd":Ljava/lang/String;
    .end local v30    # "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_1

    .line 418
    .restart local v28    # "qtd":Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v31

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " <b>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</b> <br />"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {p5 .. p5}, Lcom/mcdonalds/app/ordering/ProductUtils;->getNameDetailsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</b> <br />"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {p5 .. p5}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 423
    :cond_4
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v31

    const/16 v34, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 455
    .restart local v10    # "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .restart local v19    # "priceString":Ljava/lang/String;
    .restart local v20    # "price":D
    :cond_5
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 477
    .restart local v14    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v15    # "nameDetails":Ljava/lang/String;
    .restart local v30    # "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    :cond_6
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getDetails()Landroid/widget/TextView;

    move-result-object v31

    const/16 v35, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 486
    .end local v14    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v15    # "nameDetails":Ljava/lang/String;
    .end local v30    # "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    :cond_7
    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v31

    if-eqz v31, :cond_d

    .line 487
    const-string v31, "ordering"

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 488
    .local v18, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldShowUpLiftPrice()Z

    move-result v29

    .line 489
    .local v29, "showUplift":Z
    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_8
    :goto_7
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_d

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 490
    .local v8, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/app/ordering/ProductUtils;->getActualChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v9

    .line 491
    .local v9, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v31

    if-eqz v31, :cond_8

    .line 492
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Choice;->isSingleChoice()Z

    move-result v31

    if-eqz v31, :cond_9

    invoke-static {}, Lcom/mcdonalds/app/ordering/ProductUtils;->hideSingleChoice()Z

    move-result v31

    if-nez v31, :cond_8

    .line 496
    :cond_9
    new-instance v30, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;

    const v31, 0x7f040169

    const/16 v35, 0x0

    .line 497
    move-object/from16 v0, p1

    move/from16 v1, v31

    move-object/from16 v2, p2

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/RelativeLayout;

    invoke-direct/range {v30 .. v31}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 500
    .restart local v30    # "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getTitle()Landroid/widget/TextView;

    move-result-object v31

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    invoke-static {v9}, Lcom/mcdonalds/app/ordering/ProductUtils;->getNameDetailsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v15

    .line 502
    .restart local v15    # "nameDetails":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 503
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getDetails()Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :goto_8
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getInfo()Landroid/widget/TextView;

    move-result-object v31

    invoke-static {v9}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    invoke-static {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v24

    .line 510
    .local v24, "productPrice":D
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductBasePrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v6

    .line 511
    .local v6, "basePrice":D
    sub-double v32, v24, v6

    .line 512
    .local v32, "uplift":D
    if-eqz v29, :cond_a

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v31, v32, v36

    if-ltz v31, :cond_a

    .line 513
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getPriceUplift()Landroid/widget/TextView;

    move-result-object v31

    const/16 v35, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v13

    .line 515
    .local v13, "formatter":Ljava/text/NumberFormat;
    const-string v31, "+ %s"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-wide/from16 v0, v32

    invoke-virtual {v13, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 516
    .local v12, "formattedPrice":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getPriceUplift()Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    .end local v12    # "formattedPrice":Ljava/lang/String;
    .end local v13    # "formatter":Ljava/text/NumberFormat;
    :cond_a
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 505
    .end local v6    # "basePrice":D
    .end local v24    # "productPrice":D
    .end local v32    # "uplift":D
    :cond_b
    invoke-virtual/range {v30 .. v30}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getDetails()Landroid/widget/TextView;

    move-result-object v31

    const/16 v35, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 523
    .end local v8    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v9    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v15    # "nameDetails":Ljava/lang/String;
    .end local v18    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .end local v29    # "showUplift":Z
    .end local v30    # "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    :cond_c
    invoke-virtual/range {p5 .. p5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v31, ""

    move-object/from16 v0, v31

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .local v5, "builder":Ljava/lang/StringBuilder;
    invoke-static/range {p5 .. p5}, Lcom/mcdonalds/app/util/OrderProductUtils;->getIngredientChoiceString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getCustomSpecialInstructions()Landroid/widget/TextView;

    move-result-object v31

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    invoke-virtual {v11}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getCustomSpecialInstructions()Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderReceipt;->addDashedDivider(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto/16 :goto_0
.end method
