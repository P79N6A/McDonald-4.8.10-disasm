.class public Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;
.super Landroid/os/AsyncTask;
.source "BuildProductMapTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;,
        Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Category;",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private listener:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->listener:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;

    return-void
.end method

.method private releaseListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "releaseListener"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->listener:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;

    .line 89
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "BuildProductMapTask#doInBackground"

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

    .line 20
    check-cast p1, [Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->doInBackground([Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "BuildProductMapTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;)Ljava/util/Map;
    .locals 12
    .param p1, "params"    # [Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "doInBackground"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    .local v5, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    array-length v8, p1

    if-ne v8, v11, :cond_0

    aget-object v8, p1, v10

    invoke-virtual {v8}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->isValid()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    move-object v7, v5

    .line 66
    :cond_1
    :goto_0
    return-object v7

    .line 38
    :cond_2
    aget-object v2, p1, v10

    .line 40
    .local v2, "mapParams":Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;
    iget-object v8, v2, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->searchQuery:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 41
    const-string v8, ""

    iput-object v8, v2, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->searchQuery:Ljava/lang/String;

    .line 43
    :cond_3
    const-string v8, "ordering"

    invoke-static {v8}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 44
    .local v4, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    const/4 v3, 0x0

    .line 45
    .local v3, "orderedProductMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 46
    iget-object v8, v2, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->pod:Ljava/lang/String;

    iget v9, v2, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->currentMenuPartId:I

    iget-object v10, v2, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->searchQuery:Ljava/lang/String;

    invoke-virtual {v4, v8, v9, v10}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductsForOrdering(Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 48
    .local v7, "unorderedProductMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "interface.useDisplayOrderExclusivelyForProductCategorySort"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    new-instance v8, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$1;

    invoke-direct {v8, p0}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$1;-><init>(Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;)V

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    new-instance v3, Ljava/util/LinkedHashMap;

    .end local v3    # "orderedProductMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    .restart local v3    # "orderedProductMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 62
    .local v1, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 63
    .local v6, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-virtual {v3, v1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    .end local v1    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v6    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    .end local v7    # "unorderedProductMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    :cond_4
    move-object v7, v3

    .line 66
    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    const-string v0, "onCancelled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 84
    invoke-direct {p0}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->releaseListener()V

    .line 85
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "BuildProductMapTask#onPostExecute"

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

    .line 20
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->onPostExecute(Ljava/util/Map;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "BuildProductMapTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    const-string v0, "onPostExecute"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->listener:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->listener:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;->onBuildProductMapComplete(Ljava/util/Map;)V

    .line 76
    invoke-direct {p0}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->releaseListener()V

    .line 78
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;

    .prologue
    const-string v0, "setListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->listener:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;

    .line 28
    return-void
.end method
