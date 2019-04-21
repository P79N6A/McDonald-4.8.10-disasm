.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->renameFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 1172
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 9
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
    .local p1, "storeList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v8, 0x0

    .line 1175
    if-nez p3, :cond_3

    .line 1176
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1177
    .local v5, "storesInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1178
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1180
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1185
    .end local v4    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$800(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_2

    .line 1186
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$800(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1188
    .local v0, "favStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1189
    .local v2, "resultStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_1

    .line 1190
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 1185
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1193
    .end local v0    # "favStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v2    # "resultStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7, p2, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1198
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v5    # "storesInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :goto_2
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-static {v6, v7, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$300(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1199
    return-void

    .line 1195
    :cond_3
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$27;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v6, v8, v7, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_2
.end method
