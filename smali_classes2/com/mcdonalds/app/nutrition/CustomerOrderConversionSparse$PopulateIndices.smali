.class Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;
.super Landroid/os/AsyncTask;
.source "CustomerOrderConversionSparse.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopulateIndices"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "CustomerOrderConversionSparse$PopulateIndices#doInBackground"

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

    .line 134
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "CustomerOrderConversionSparse$PopulateIndices#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "params":[Ljava/util/List;, "[Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    const/4 v6, 0x0

    const-string v4, "doInBackground"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    aget-object v1, p1, v6

    .line 142
    .local v1, "customerOrders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    .line 145
    .local v0, "customerOrder":Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    new-instance v3, Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/modules/models/Order;-><init>()V

    .line 146
    .local v3, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    iget-object v5, v5, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/Order;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 149
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 152
    .local v2, "customerProductForOrder":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    invoke-static {v6, v2}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->access$100(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_1

    .line 191
    .end local v2    # "customerProductForOrder":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    iget-object v5, v5, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->mOrders:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v0    # "customerOrder":Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    .end local v3    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "CustomerOrderConversionSparse$PopulateIndices#onPostExecute"

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

    .line 134
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->onPostExecute(Ljava/lang/Void;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "CustomerOrderConversionSparse$PopulateIndices#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const-string v4, "onPostExecute"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 203
    const/4 v3, 0x0

    .line 205
    .local v3, "key":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    invoke-static {v4}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->access$200(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 206
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    invoke-static {v4}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->access$200(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 208
    move v2, v1

    .line 212
    .local v2, "index":I
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    invoke-static {v4}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->access$200(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 218
    .local v0, "done":I
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    iget-object v4, v4, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;

    invoke-direct {v6, p0, v2, v0}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices$1;-><init>(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateIndices;II)V

    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "done":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "done":I
    goto :goto_1

    .line 240
    .end local v0    # "done":I
    .end local v2    # "index":I
    :cond_1
    return-void
.end method
