.class Lcom/mcdonalds/app/home/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeFragment;->refreshOffers()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

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

    .line 224
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/HomeFragment$2;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
    .local p1, "customerFavoriteStoresInfo":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
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

    .line 227
    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment$2;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/HomeFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, "favoriteStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 231
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

    .line 232
    .local v2, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getStoreId()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 233
    .local v3, "storeId":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getStoreId()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 238
    .end local v2    # "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    .end local v3    # "storeId":Ljava/lang/Integer;
    :cond_0
    const-string v4, "storeLocator"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    new-instance v5, Lcom/mcdonalds/app/home/HomeFragment$2$1;

    invoke-direct {v5, p0, v0}, Lcom/mcdonalds/app/home/HomeFragment$2$1;-><init>(Lcom/mcdonalds/app/home/HomeFragment$2;Landroid/util/SparseArray;)V

    invoke-virtual {v4, v1, v5}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoresForIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 295
    .end local v0    # "favoriteInfoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
    .end local v1    # "favoriteStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
