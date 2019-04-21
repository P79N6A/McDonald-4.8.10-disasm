.class public Lcom/mcdonalds/app/ordering/menu/OrderReceiptRecents;
.super Ljava/lang/Object;
.source "OrderReceiptRecents.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDashedDivider(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ordering.menu.OrderReceiptRecents"

    const-string v4, "addDashedDivider"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    if-nez p0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "dashedLine":Landroid/widget/ImageView;
    const v2, 0x7f0200fb

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {p0, v8}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p0, v8}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v8}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v7, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static configureOrderReceiptForDisplay(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)V
    .locals 40
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/widget/LinearLayout;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v34, 0x0

    const-string v35, "com.mcdonalds.app.ordering.menu.OrderReceiptRecents"

    const-string v36, "configureOrderReceiptForDisplay"

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object p0, v37, v38

    const/16 v38, 0x1

    aput-object p1, v37, v38

    const/16 v38, 0x2

    aput-object p2, v37, v38

    const/16 v38, 0x3

    aput-object p3, v37, v38

    invoke-static/range {v34 .. v37}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v9

    .line 44
    .local v9, "currencyFormatter":Ljava/text/NumberFormat;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v34

    const-string v35, "interface.willDisplayPriceDetails"

    invoke-virtual/range {v34 .. v35}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v24

    .line 45
    .local v24, "showPrice":Z
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldShowUpLiftPrice()Z

    move-result v25

    .line 46
    .local v25, "showUplift":Z
    const v34, 0x7f04016a

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, p2

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 48
    .local v23, "receiptHeader":Landroid/widget/RelativeLayout;
    const v34, 0x7f110067

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 49
    .local v30, "title":Landroid/widget/TextView;
    const v34, 0x7f110437

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 51
    .local v29, "subTitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/menu/OrderReceiptRecents;->updateFavoriteName(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 53
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    invoke-static/range {p1 .. p2}, Lcom/mcdonalds/app/ordering/menu/OrderReceiptRecents;->addDashedDivider(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 57
    const-string v34, "ordering"

    invoke-static/range {v34 .. v34}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 59
    .local v17, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v10

    .line 61
    .local v10, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_0
    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_12

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 63
    .local v18, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isBagChargeEnabled()Z

    move-result v34

    if-eqz v34, :cond_1

    .line 64
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBagProductCode()I

    move-result v34

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v34

    move/from16 v1, v36

    if-eq v0, v1, :cond_0

    .line 65
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNoBagProductCode()I

    move-result v34

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v34

    move/from16 v1, v36

    if-eq v0, v1, :cond_0

    .line 68
    :cond_1
    new-instance v13, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;

    const v34, 0x7f040167

    const/16 v36, 0x0

    .line 69
    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, p2

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v34

    invoke-direct {v13, v0}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 73
    .local v13, "element":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTopBorder()Landroid/view/View;

    move-result-object v34

    const/16 v36, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getBottomBorder()Landroid/view/View;

    move-result-object v34

    const/16 v36, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getQuantity()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionOnOrderingPages()Z

    move-result v34

    if-nez v34, :cond_5

    .line 81
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v34

    invoke-static/range {v18 .. v18}, Lcom/mcdonalds/app/util/OrderProductUtils;->getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AppUtils;->getEnergyTextForOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_1
    if-eqz v24, :cond_2

    .line 87
    invoke-static/range {v18 .. v18}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v20

    .line 88
    .local v20, "productPrice":D
    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v22

    .line 89
    .local v22, "productPriceString":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v34

    const-string v36, "%s*"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v22, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .end local v20    # "productPrice":D
    .end local v22    # "productPriceString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v34, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .local v19, "productCustomization":Ljava/lang/StringBuilder;
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v34

    if-eqz v34, :cond_e

    .line 101
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v34

    if-eqz v34, :cond_7

    .line 102
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_3
    :goto_2
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_7

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 103
    .local v16, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v16, :cond_3

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v34, ""

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .local v6, "builder":Ljava/lang/StringBuilder;
    new-instance v28, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;

    const v34, 0x7f040169

    const/16 v37, 0x0

    .line 106
    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, p2

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 108
    .local v28, "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getTitle()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static/range {v16 .. v16}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v34

    if-nez v34, :cond_4

    .line 112
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 113
    invoke-static/range {v16 .. v16}, Lcom/mcdonalds/app/util/OrderProductUtils;->getIngredientChoiceString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 116
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v34

    if-eqz v34, :cond_6

    .line 117
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getDetails()Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_3
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 83
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v16    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v19    # "productCustomization":Ljava/lang/StringBuilder;
    .end local v28    # "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    :cond_5
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v34

    const/16 v36, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 119
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v16    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v19    # "productCustomization":Ljava/lang/StringBuilder;
    .restart local v28    # "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    :cond_6
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getDetails()Landroid/widget/TextView;

    move-result-object v34

    const/16 v37, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 127
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v16    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v28    # "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v34

    if-eqz v34, :cond_f

    .line 128
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_8
    :goto_4
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_f

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 129
    .local v7, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    .line 130
    .local v8, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v28, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;

    const v34, 0x7f040169

    const/16 v37, 0x0

    .line 131
    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, p2

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 138
    .restart local v28    # "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    if-eqz v8, :cond_8

    .line 139
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v34

    if-eqz v34, :cond_9

    .line 140
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getTitle()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_9
    invoke-static {v8}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v12

    .line 143
    .local v12, "customizationStiong":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_b

    .line 144
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getInfo()Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_5
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 150
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_a
    :goto_6
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_c

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 151
    .local v26, "subChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    if-eqz v26, :cond_a

    .line 152
    invoke-virtual/range {v26 .. v26}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v27

    .line 153
    .local v27, "subChoiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v27, :cond_a

    .line 154
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getDetails()Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v27 .. v27}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 146
    .end local v26    # "subChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v27    # "subChoiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_b
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getInfo()Landroid/widget/TextView;

    move-result-object v34

    const/16 v37, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 160
    :cond_c
    if-eqz v24, :cond_d

    .line 161
    invoke-static {v8}, Lcom/mcdonalds/app/ordering/ProductUtils;->getProductTotalPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v20

    .line 162
    .restart local v20    # "productPrice":D
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductBasePrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)D

    move-result-wide v4

    .line 163
    .local v4, "basePrice":D
    sub-double v32, v20, v4

    .line 164
    .local v32, "uplift":D
    if-eqz v25, :cond_d

    const-wide/16 v38, 0x0

    cmpl-double v34, v32, v38

    if-lez v34, :cond_d

    .line 165
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getPriceUplift()Landroid/widget/TextView;

    move-result-object v34

    const/16 v37, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v15

    .line 167
    .local v15, "formatter":Ljava/text/NumberFormat;
    const-string v34, "+ %s"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-wide/from16 v0, v32

    invoke-virtual {v15, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 168
    .local v14, "formattedPrice":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getPriceUplift()Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .end local v4    # "basePrice":D
    .end local v14    # "formattedPrice":Ljava/lang/String;
    .end local v15    # "formatter":Ljava/text/NumberFormat;
    .end local v20    # "productPrice":D
    .end local v32    # "uplift":D
    :cond_d
    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 176
    .end local v7    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v8    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v12    # "customizationStiong":Ljava/lang/String;
    .end local v28    # "subElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsSubElement;
    :cond_e
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 177
    invoke-static/range {v18 .. v18}, Lcom/mcdonalds/app/util/OrderProductUtils;->getIngredientChoiceString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 182
    :cond_f
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v34

    if-eqz v34, :cond_10

    .line 183
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "\n"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v18 .. v18}, Lcom/mcdonalds/app/util/OrderProductUtils;->getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, "customization":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .end local v11    # "customization":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v34

    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-le v0, v1, :cond_11

    .line 188
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getCustomSpecialInstructions()Landroid/widget/TextView;

    move-result-object v34

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-virtual {v13}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getCustomSpecialInstructions()Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_11
    invoke-static/range {p1 .. p2}, Lcom/mcdonalds/app/ordering/menu/OrderReceiptRecents;->addDashedDivider(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto/16 :goto_0

    .line 198
    .end local v13    # "element":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    .end local v18    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v19    # "productCustomization":Ljava/lang/StringBuilder;
    :cond_12
    new-instance v31, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;

    const v34, 0x7f040167

    const/16 v35, 0x0

    .line 199
    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, p2

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;-><init>(Landroid/widget/RelativeLayout;)V

    .line 202
    .local v31, "totalElement":Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;
    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTopBorder()Landroid/view/View;

    move-result-object v34

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getBottomBorder()Landroid/view/View;

    move-result-object v34

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getQuantity()Landroid/widget/TextView;

    move-result-object v34

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getInfo()Landroid/widget/TextView;

    move-result-object v34

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    if-eqz v24, :cond_13

    .line 210
    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getTitle()Landroid/widget/TextView;

    move-result-object v34

    const v35, 0x7f090602

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(I)V

    .line 211
    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getPrice()Landroid/widget/TextView;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "*"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_13
    invoke-virtual/range {v31 .. v31}, Lcom/mcdonalds/app/ordering/summary/OrderDetailsElement;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method public static updateFavoriteName(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 8
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "subTitle"    # Landroid/widget/TextView;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.menu.OrderReceiptRecents"

    const-string v3, "updateFavoriteName"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v6

    aput-object p1, v4, v7

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOrderNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 231
    const v1, 0x7f0905e2

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOrderNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "orderNumber":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getFavoriteName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getFavoriteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .end local v0    # "orderNumber":Ljava/lang/String;
    :goto_0
    return-void

    .line 236
    .restart local v0    # "orderNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getRecentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    .end local v0    # "orderNumber":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getFavoriteName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getFavoriteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getRecentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getRecentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
