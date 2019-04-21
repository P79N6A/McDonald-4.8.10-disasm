.class Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;
.super Ljava/lang/Object;
.source "DashboardViewModel.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->getOffers(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncListener;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

.field final synthetic val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

.field final synthetic val$favStoreAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Lcom/mcdonalds/sdk/AsyncCounter;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    iput-object p3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->val$favStoreAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

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

    .line 262
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
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
    .local p1, "storeFavoriteInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
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

    .line 269
    if-nez p3, :cond_1

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "favoriteStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v3, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$602(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 276
    .local v1, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 277
    .local v2, "storeId":Ljava/lang/Integer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$600(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 281
    .end local v1    # "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    .end local v2    # "storeId":Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-static {v3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1000(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;)Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;)V

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresForIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 312
    .end local v0    # "favoriteStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$3;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v3, p3}, Lcom/mcdonalds/sdk/AsyncCounter;->error(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method
