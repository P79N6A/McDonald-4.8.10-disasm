.class public Lcom/mcdonalds/app/util/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"


# static fields
.field private static lastPage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDayPart(I)Ljava/lang/String;
    .locals 6
    .param p0, "menuTypeID"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v2, "getDayPart"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    if-nez p0, :cond_0

    const-string v0, "Breakfast"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Regular"

    goto :goto_0
.end method

.method public static trackAppFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v2, "trackAppFinish"

    invoke-static {v3, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v2, "last_page_view"

    .line 277
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "page_name"

    sget-object v3, Lcom/mcdonalds/app/util/AnalyticsUtils;->lastPage:Ljava/lang/String;

    .line 278
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 280
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    invoke-static {v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 281
    return-void
.end method

.method public static trackCheckout(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 15
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v10, 0x0

    const-string v11, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v12, "trackCheckout"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    const/4 v14, 0x2

    aput-object p2, v13, v14

    invoke-static {v10, v11, v12, v13}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 84
    .local v2, "customArgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v10, 0x8

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalEnergy()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    const/16 v10, 0x9

    invoke-virtual/range {p2 .. p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    const/16 v11, 0x28

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "Delivery"

    .line 86
    :goto_0
    invoke-virtual {v2, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    const/16 v10, 0x2a

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    const/16 v10, 0x17

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getDayPart()I

    move-result v11

    invoke-static {v11}, Lcom/mcdonalds/app/util/AnalyticsUtils;->getDayPart(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->getFormattedLocation()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "location":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 92
    const/4 v10, 0x6

    invoke-virtual {v2, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_0
    const-string v10, "Check out"

    invoke-static {p0, v10, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v8, "productCodes":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v9, "productNames":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 101
    .local v7, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v4

    .line 102
    .local v4, "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 103
    .local v3, "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    const/16 v12, 0x25

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    const/16 v12, 0x26

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    const/16 v12, 0x27

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v12, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Custom:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v13, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v13}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 107
    invoke-virtual {v13, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCustom(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v13

    .line 108
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v13

    .line 106
    invoke-static {v12, v13}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_2

    .line 87
    .end local v3    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v4    # "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v8    # "productCodes":Ljava/lang/StringBuilder;
    .end local v9    # "productNames":Ljava/lang/StringBuilder;
    :cond_1
    const-string v10, "Pickup"

    goto/16 :goto_0

    .line 111
    .restart local v4    # "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .restart local v6    # "location":Ljava/lang/String;
    .restart local v7    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .restart local v8    # "productCodes":Ljava/lang/StringBuilder;
    .restart local v9    # "productNames":Ljava/lang/StringBuilder;
    :cond_2
    const/16 v11, 0x1b

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackCustom(ILjava/lang/String;)V

    .line 113
    sget-object v11, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v12, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v12}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 114
    invoke-static {v7}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getProductFromBasket(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v12

    .line 115
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v12

    .line 113
    invoke-static {v11, v12}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 117
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 121
    .end local v4    # "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v7    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 124
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 125
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 127
    :cond_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v5, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "EVENT_NAME"

    const-string v11, "checkout"

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v10, "pdid"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v10, "pdname"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v10, "pdismds"

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v11, "pdispickup"

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-static {v10, v11}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "currentDate":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "currencyCode":Ljava/lang/String;
    new-instance v10, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v10}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v11, "order_confirm"

    .line 138
    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v10

    const-string v11, "order_id"

    .line 139
    invoke-virtual {v10, v11, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v10

    const-string v11, "curr_cd"

    .line 140
    invoke-virtual {v10, v11, v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v10

    const-string v11, "order_amt"

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v10

    const-string v11, "local_timestamp"

    .line 142
    invoke-virtual {v10, v11, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v10

    .line 143
    invoke-virtual {v10, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v10

    .line 144
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v10

    .line 137
    invoke-static {v10}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 145
    return-void

    .line 132
    .end local v0    # "currencyCode":Ljava/lang/String;
    .end local v1    # "currentDate":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public static trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 5
    .param p0, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v2, "trackEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v0, p0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 229
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 6
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v3, "trackEvent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 212
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 215
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    invoke-static {v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 216
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v3, "trackEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 220
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 221
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setValue(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 224
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    invoke-static {v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 225
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v3, "trackEvent"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 202
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 203
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 204
    invoke-virtual {v1, p2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 207
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 208
    return-void
.end method

.method public static trackFoodSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "analyticsTitle"    # Ljava/lang/String;
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v3, "trackFoodSearch"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 73
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "On click"

    .line 74
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 77
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 79
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    :cond_0
    return-void
.end method

.method public static trackHamburgerMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v1, "trackHamburgerMenu"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string v0, "/side-menu"

    const-string v1, "Hamburger Button"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v2, "trackOnClickEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    const-string v0, "On click"

    invoke-static {p0, v0, p1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public static trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 6
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v3, "trackOnClickEvent"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 191
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "On click"

    .line 192
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 193
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 194
    invoke-virtual {v1, p2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCustom(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 197
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 198
    return-void
.end method

.method public static trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Ljava/util/Map;)V
    .locals 6
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p3, "jiceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v3, "trackOnClickEvent"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 179
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "On click"

    .line 180
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {v1, p2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCustom(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 183
    invoke-virtual {v1, p3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 186
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 187
    return-void
.end method

.method public static trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "jiceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    const-string v0, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v1, "trackOnClickEvent"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v4, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-static {p0, p1, p2, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)V

    .line 159
    return-void
.end method

.method public static trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)V
    .locals 6
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p3, "a"    # Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "jiceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v3, "trackOnClickEvent"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 165
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "On click"

    .line 166
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 168
    invoke-virtual {v1, p2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setConversionMaster(Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 172
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 173
    return-void
.end method

.method public static trackOnSlideEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v2, "trackOnSlideEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const-string v0, "On Slide"

    invoke-static {p0, v0, p1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public static trackScreenLoad(Ljava/lang/String;)V
    .locals 7
    .param p0, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v4, "trackScreenLoad"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    sput-object p0, Lcom/mcdonalds/app/util/AnalyticsUtils;->lastPage:Ljava/lang/String;

    .line 264
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 265
    .local v1, "customArgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v2, 0xd

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "Screen"

    .line 268
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 269
    invoke-virtual {v2, p0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 270
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCustom(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 272
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ScreenLoad:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 273
    return-void
.end method

.method public static trackSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "analyticsTitle"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v3, "trackSearch"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 60
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "On click"

    .line 61
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "Search"

    .line 62
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const/16 v2, 0x13

    .line 63
    invoke-virtual {v1, v2, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->addCustom(ILjava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 66
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 68
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    :cond_0
    return-void
.end method

.method public static trackSkipFavoritesButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v1, "trackSkipFavoritesButton"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const-string v0, "/restaurant-locator"

    const-string v1, "Skip - Save to favorites"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static trackStoreSelection(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 7
    .param p0, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.AnalyticsUtils"

    const-string v3, "trackStoreSelection"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 47
    .local v0, "customArgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    const/16 v1, 0x35

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    const-string v1, "/restaurant-locator"

    const-string v2, "Select"

    invoke-static {v1, v2, v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 51
    return-void
.end method
