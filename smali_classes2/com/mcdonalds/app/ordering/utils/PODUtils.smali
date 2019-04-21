.class public Lcom/mcdonalds/app/ordering/utils/PODUtils;
.super Ljava/lang/Object;
.source "PODUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainPODs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v1, "com.mcdonalds.app.ordering.utils.PODUtils"

    const-string v2, "getMainPODs"

    invoke-static {v3, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 140
    .local v0, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v1, "modules.ordering.mainPods"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "modules.ordering.mainPods"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 143
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "FrontCounter"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Drivethru"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ColdKiosk"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMainPODsLength()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ordering.utils.PODUtils"

    const-string v1, "getMainPODsLength"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static {}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getMainPODs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getOrderUnavailablePODs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ordering.utils.PODUtils"

    const-string v1, "getOrderUnavailablePODs"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getOrderUnavailablePODs(Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderUnavailablePODs(Lcom/mcdonalds/sdk/modules/models/Order;)Ljava/util/List;
    .locals 8
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.ordering.utils.PODUtils"

    const-string v5, "getOrderUnavailablePODs"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 105
    .local v2, "unavailable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    :goto_0
    return-object v3

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 110
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {v1}, Lcom/mcdonalds/app/ordering/OrderUtils;->isProductBagProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    invoke-static {}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getMainPODs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "pod":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->availableAtPOD(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    .end local v0    # "pod":Ljava/lang/String;
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static getRemainingPODs(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.utils.PODUtils"

    const-string v3, "getRemainingPODs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getMainPODs()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "pods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 53
    return-object v0
.end method

.method public static getUnavailablePODMessage(Ljava/util/List;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 11
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "unavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.ordering.utils.PODUtils"

    const-string v7, "getUnavailablePODMessage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v9

    aput-object p1, v8, v10

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getMainPODs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    .line 68
    invoke-static {p0}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getRemainingPODs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getPODDisplayName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "name":Ljava/lang/String;
    const v5, 0x7f090401

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .end local v0    # "available":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 75
    :cond_0
    const/4 v1, 0x1

    .line 77
    .local v1, "first":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, "pod":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 81
    const/4 v1, 0x0

    .line 86
    :goto_2
    invoke-static {v3, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getPODDisplayName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 83
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    const v6, 0x7f0903d1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 90
    .end local v3    # "pod":Ljava/lang/String;
    :cond_2
    const v5, 0x7f090402

    new-array v6, v10, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 90
    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static isMainPOD(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pod"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.utils.PODUtils"

    const-string v2, "isMainPOD"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->getMainPODs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static validateQRCodePOD(ILcom/mcdonalds/sdk/modules/models/Order;)Z
    .locals 12
    .param p0, "podId"    # I
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v5, "com.mcdonalds.app.ordering.utils.PODUtils"

    const-string v6, "validateQRCodePOD"

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v9

    aput-object p1, v7, v10

    invoke-static {v4, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 166
    .local v0, "PODToQRMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v4, "FrontCounter"

    invoke-virtual {v0, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    const-string v4, "Drivethru"

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    const-string v4, "ColdKiosk"

    invoke-virtual {v0, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    const/4 v4, 0x3

    const-string v5, "Delivery"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    const/4 v4, 0x4

    const-string v5, "ColdKiosk"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    const/4 v4, 0x5

    const-string v5, "McCafe"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    const/4 v4, 0x6

    const-string v5, "McExpress"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    const/4 v4, 0x7

    const-string v5, "ColdKioskDrink"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    const/4 v3, 0x1

    .line 176
    .local v3, "retVal":Z
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/mcdonalds/app/ordering/utils/PODUtils;->isMainPOD(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 179
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {v2}, Lcom/mcdonalds/app/ordering/OrderUtils;->isProductBagProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 180
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->availableAtPOD(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 181
    const/4 v3, 0x0

    .line 188
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    return v3
.end method
