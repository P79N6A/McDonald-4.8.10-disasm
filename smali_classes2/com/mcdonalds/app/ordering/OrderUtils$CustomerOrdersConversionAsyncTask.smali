.class public Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;
.super Landroid/os/AsyncTask;
.source "OrderUtils.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/OrderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomerOrdersConversionAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Order;",
        ">;>;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private isFavorite:Z

.field private mCustomerOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;ZLcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p2, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .param p3, "isFavorite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "customerOrders":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->mCustomerOrders:Ljava/util/List;

    .line 169
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 170
    iput-boolean p3, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->isFavorite:Z

    .line 172
    iput-object p4, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 173
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OrderUtils$CustomerOrdersConversionAsyncTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "doInBackground"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OrderUtils$CustomerOrdersConversionAsyncTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v5, "doInBackground"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;"
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->mCustomerOrders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    .line 180
    .local v0, "customerOrder":Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-static {v0, v6}, Lcom/mcdonalds/app/ordering/OrderUtils;->access$000(Lcom/mcdonalds/sdk/modules/models/CustomerOrder;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    .line 182
    .local v2, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    iget-boolean v6, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->isFavorite:Z

    if-eqz v6, :cond_1

    move-object v1, v0

    .line 183
    check-cast v1, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 184
    .local v1, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getFavoriteId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setFavoriteId(Ljava/lang/Integer;)V

    .line 185
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setFavoriteName(Ljava/lang/String;)V

    .line 192
    .end local v1    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    :goto_1
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 193
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 194
    .local v3, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "7030"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 195
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->removeProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_2

    .line 187
    .end local v3    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getOrderId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setRecentId(Ljava/lang/Integer;)V

    .line 188
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setRecentName(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getOrderNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setOrderNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    .end local v0    # "customerOrder":Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    .end local v2    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_3
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OrderUtils$CustomerOrdersConversionAsyncTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onPostExecute"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->onPostExecute(Ljava/util/List;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OrderUtils$CustomerOrdersConversionAsyncTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;"
    const/4 v3, 0x0

    const-string v0, "onPostExecute"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionAsyncTask;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 212
    return-void
.end method
