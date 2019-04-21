.class Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;
.super Landroid/os/AsyncTask;
.source "OrderingModule.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field final synthetic val$externalId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->val$externalId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->access$000(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->val$externalId:Ljava/lang/String;

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 391
    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByProductCode(Landroid/content/Context;IZ)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OrderingModule$9#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->doInBackground([Ljava/lang/Void;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OrderingModule$9#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 2
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    const/4 v1, 0x0

    .line 397
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, v1, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 398
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OrderingModule$9#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$9;->onPostExecute(Lcom/mcdonalds/sdk/modules/models/Product;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OrderingModule$9#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
