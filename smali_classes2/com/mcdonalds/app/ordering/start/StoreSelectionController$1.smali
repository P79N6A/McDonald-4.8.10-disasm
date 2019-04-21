.class Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;
.super Ljava/lang/Object;
.source "StoreSelectionController.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->refreshStores()V
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
        "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

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

    .line 80
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
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

    .line 84
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->access$000(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 86
    if-nez p3, :cond_2

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "favoriteStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 92
    .local v0, "favoriteInfoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 94
    .local v2, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getStoreId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 95
    .local v3, "storeId":Ljava/lang/Integer;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getStoreId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 99
    .end local v2    # "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    .end local v3    # "storeId":Ljava/lang/Integer;
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->access$400(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;

    invoke-direct {v5, p0, v0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1$1;-><init>(Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;Landroid/util/SparseArray;)V

    invoke-virtual {v4, v1, v5}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresForIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 135
    .end local v0    # "favoriteInfoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
    .end local v1    # "favoriteStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 131
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 132
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method
