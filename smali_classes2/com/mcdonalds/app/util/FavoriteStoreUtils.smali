.class public Lcom/mcdonalds/app/util/FavoriteStoreUtils;
.super Ljava/lang/Object;
.source "FavoriteStoreUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfFavoriteStoresAreOpen(Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "favoriteInfoSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v7, 0x0

    const-string v8, "com.mcdonalds.app.util.FavoriteStoreUtils"

    const-string v9, "checkIfFavoriteStoresAreOpen"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v3, "deleteFavoriteStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "availableFavoriteStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "availableStoresList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v7, "customer"

    invoke-static {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 32
    .local v2, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->shouldFilterStoreResultsUsingGeneralStatus()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 35
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isGeneralStatusIsOpen()Z

    move-result v8

    if-nez v8, :cond_0

    .line 36
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 46
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 47
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 48
    .local v6, "storeFavoriteInfo":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getStoreId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getStoreId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 49
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getStoreId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 54
    .end local v4    # "i":I
    .end local v6    # "storeFavoriteInfo":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 55
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/app/util/FavoriteStoreUtils$1;

    invoke-direct {v8}, Lcom/mcdonalds/app/util/FavoriteStoreUtils$1;-><init>()V

    invoke-virtual {v2, v3, v7, v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->deleteFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 65
    .end local v1    # "availableStoresList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_4
    :goto_2
    return-object v1

    .restart local v1    # "availableStoresList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_5
    move-object v1, p1

    goto :goto_2
.end method
