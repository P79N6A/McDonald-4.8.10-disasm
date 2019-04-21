.class Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;
.super Ljava/lang/Object;
.source "DashboardViewModel.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
.field final synthetic this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

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

    .line 281
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
    const/4 v6, 0x0

    const-string v3, "onResponse"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    if-eqz p3, :cond_1

    .line 285
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    iget-object v3, v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v3, p3}, Lcom/mcdonalds/sdk/AsyncCounter;->error(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 286
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    iget-object v3, v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->val$favStoreAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v3, v6, v6, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    if-eqz p1, :cond_0

    .line 289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 290
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    iget-object v4, v4, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$600(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 291
    .local v1, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 293
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    goto :goto_1

    .line 297
    .end local v1    # "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    iget-object v3, v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$600(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/mcdonalds/app/util/FavoriteStoreUtils;->checkIfFavoriteStoresAreOpen(Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 298
    .local v0, "availableFavoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    iget-object v3, v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$700(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setFavoriteStores(Ljava/util/List;)V

    .line 299
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    iget-object v3, v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$800(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)V

    .line 300
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    iget-object v3, v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v3, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$900(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/util/List;)V

    .line 302
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    iget-object v3, v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 303
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;->this$1:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;

    iget-object v3, v3, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->val$favStoreAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v3, v6, v6, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
