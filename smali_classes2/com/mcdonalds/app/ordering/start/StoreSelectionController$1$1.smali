.class Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;
.super Ljava/lang/Object;
.source "StoreSelectionController.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;

.field final synthetic val$favoriteInfoArray:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->this$1:Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->val$favoriteInfoArray:Landroid/util/SparseArray;

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

    .line 99
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v4, "onResponse"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->this$1:Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;

    iget-object v4, v4, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->access$000(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 105
    if-nez p3, :cond_3

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 107
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->val$favoriteInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 108
    .local v2, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 110
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v2    # "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    .end local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->val$favoriteInfoArray:Landroid/util/SparseArray;

    invoke-static {v4, p1}, Lcom/mcdonalds/app/util/FavoriteStoreUtils;->checkIfFavoriteStoresAreOpen(Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "availableFavoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->this$1:Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;

    iget-object v4, v4, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->access$100(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setFavoriteStores(Ljava/util/List;)V

    .line 117
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->this$1:Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;

    iget-object v4, v4, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-static {v4, v0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->access$202(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;Ljava/util/List;)Ljava/util/List;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->this$1:Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;

    iget-object v4, v4, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->access$200(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    .local v1, "checkStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->this$1:Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;

    iget-object v4, v4, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->access$300(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 121
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;->this$1:Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;

    iget-object v4, v4, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->access$300(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v0    # "availableFavoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v1    # "checkStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_2
    :goto_1
    return-void

    .line 124
    :cond_3
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 125
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method
