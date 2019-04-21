.class final Lcom/mcdonalds/app/ordering/ProductUtils$2;
.super Landroid/os/AsyncTask;
.source "ProductUtils.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/ProductUtils;->createOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic val$customerOrderProduct:Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$orderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductUtils$2;->val$customerOrderProduct:Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/ProductUtils$2;->val$orderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/ProductUtils$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductUtils$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v0, "doInBackground"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductUtils$2;->val$customerOrderProduct:Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductUtils$2;->val$orderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/ProductUtils;->createOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductUtils$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "ProductUtils$2#doInBackground"

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

    .line 153
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/ProductUtils$2;->doInBackground([Ljava/lang/Void;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ProductUtils$2#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onPostExecute"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductUtils$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 162
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductUtils$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "ProductUtils$2#onPostExecute"

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

    .line 153
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/ProductUtils$2;->onPostExecute(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ProductUtils$2#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
