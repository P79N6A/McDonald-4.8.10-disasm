.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$favoriteStores:Ljava/util/List;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->val$favoriteStores:Ljava/util/List;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p4, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 1069
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 8
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
    .line 1072
    .local p1, "storeList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-nez p3, :cond_4

    .line 1073
    if-eqz p1, :cond_2

    .line 1074
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1076
    .local v4, "storesInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1077
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1078
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1081
    .end local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->val$favoriteStores:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 1082
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->val$favoriteStores:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1084
    .restart local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1085
    .local v0, "favStoreInfo":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_1

    .line 1086
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 1088
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$800(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1093
    .end local v0    # "favStoreInfo":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v4    # "storesInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_2
    new-instance p3, Lcom/mcdonalds/sdk/AsyncException;

    .end local p3    # "exception":Lcom/mcdonalds/sdk/AsyncException;
    const-string v5, "Error adding store to Favorites"

    invoke-direct {p3, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 1096
    .restart local p3    # "exception":Lcom/mcdonalds/sdk/AsyncException;
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$800(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v5, v6, v7, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1101
    :goto_2
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-static {v5, v6, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$300(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1102
    return-void

    .line 1098
    :cond_4
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$25;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v5, v6, v7, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_2
.end method
