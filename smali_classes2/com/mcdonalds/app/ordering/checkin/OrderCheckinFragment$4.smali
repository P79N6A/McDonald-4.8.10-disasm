.class Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$4;
.super Ljava/lang/Object;
.source "OrderCheckinFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$4;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

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

    .line 547
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$4;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v5, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    if-nez p3, :cond_2

    invoke-static {p1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 552
    .local v0, "newStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 553
    .local v1, "s":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$4;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$200(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 554
    move-object v0, v1

    .line 558
    .end local v1    # "s":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$4;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 561
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$4;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$4;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$300(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCurrentStoreInfo(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 563
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 567
    .end local v0    # "newStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :goto_0
    return-void

    .line 565
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$4;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$400(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    goto :goto_0
.end method
