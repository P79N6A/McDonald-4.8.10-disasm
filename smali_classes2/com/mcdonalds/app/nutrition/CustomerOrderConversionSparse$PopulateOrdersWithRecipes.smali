.class public Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;
.super Landroid/os/AsyncTask;
.source "CustomerOrderConversionSparse.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopulateOrdersWithRecipes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "CustomerOrderConversionSparse$PopulateOrdersWithRecipes#doInBackground"

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

    .line 244
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "CustomerOrderConversionSparse$PopulateOrdersWithRecipes#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v6, "doInBackground"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    iget-object v6, v6, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->mOrders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/Order;

    .line 254
    .local v4, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 257
    .local v5, "productForOrder":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 258
    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    invoke-static {v6}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->access$200(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 261
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 264
    .local v1, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 265
    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    invoke-static {v6}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->access$200(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v1, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 269
    :cond_3
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v0

    .line 270
    .local v0, "choiceSolutions":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v3, 0x0

    .local v3, "l":I
    :goto_0
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 272
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->keyAt(I)I

    move-result v2

    .line 273
    .local v2, "key":I
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 274
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget-object v7, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    invoke-static {v7}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->access$200(Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 270
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "choiceSolutions":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v1    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "key":I
    .end local v3    # "l":I
    .end local v4    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v5    # "productForOrder":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_5
    const/4 v6, 0x0

    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "CustomerOrderConversionSparse$PopulateOrdersWithRecipes#onPostExecute"

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

    .line 244
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->onPostExecute(Ljava/lang/Void;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "CustomerOrderConversionSparse$PopulateOrdersWithRecipes#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const-string v0, "onPostExecute"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 289
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 291
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->mGridListener:Lcom/mcdonalds/app/nutrition/GridListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->mGridListener:Lcom/mcdonalds/app/nutrition/GridListener;

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse$PopulateOrdersWithRecipes;->this$0:Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;

    iget-object v1, v1, Lcom/mcdonalds/app/nutrition/CustomerOrderConversionSparse;->mOrders:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/nutrition/GridListener;->orderListAvailable(Ljava/util/List;)V

    .line 295
    :cond_0
    return-void
.end method
