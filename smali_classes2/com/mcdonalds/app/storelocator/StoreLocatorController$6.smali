.class Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;
.super Ljava/lang/Object;
.source "StoreLocatorController.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorController;->refreshCurrentStoreAndFavorites(Z)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

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

    .line 1201
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1208
    if-nez p3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1209
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1211
    .local v1, "newStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$700(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v0

    .line 1216
    .local v0, "currentStoreId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1217
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 1218
    move-object v1, v2

    .line 1223
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$700(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 1224
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 1227
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$800(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1228
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v3, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$900(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V

    .line 1234
    .end local v0    # "currentStoreId":I
    .end local v1    # "newStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    :goto_0
    return-void

    .line 1230
    .restart local v0    # "currentStoreId":I
    .restart local v1    # "newStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$6;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    goto :goto_0
.end method
