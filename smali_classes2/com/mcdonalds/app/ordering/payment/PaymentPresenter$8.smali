.class Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;
.super Ljava/lang/Object;
.source "PaymentPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

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

    .line 1116
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
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
    const/4 v4, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    if-nez p3, :cond_1

    invoke-static {p1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1120
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1200(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v1

    invoke-interface {v1}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showRestaurantMismatchError()V

    .line 1123
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-static {v2, v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1202(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1124
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1125
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1200(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 1127
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1200(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 1134
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :goto_0
    return-void

    .line 1130
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$200(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$1300(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(Ljava/lang/String;)V

    .line 1131
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$200(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 1132
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter$8;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;->access$100(Lcom/mcdonalds/app/ordering/payment/PaymentPresenter;)Lcom/mcdonalds/app/ordering/payment/PaymentView;

    move-result-object v1

    invoke-interface {v1}, Lcom/mcdonalds/app/ordering/payment/PaymentView;->showInvalidRestaurantError()V

    goto :goto_0
.end method
