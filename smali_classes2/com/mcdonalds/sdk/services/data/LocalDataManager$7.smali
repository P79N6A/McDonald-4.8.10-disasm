.class Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;
.super Landroid/os/AsyncTask;
.source "LocalDataManager.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/data/LocalDataManager;->updateObjectInCache(Ljava/lang/String;Ljava/lang/Object;Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$serialize:Z

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .prologue
    .line 891
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->val$value:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->val$serialize:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "LocalDataManager$7#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "LocalDataManager$7#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->access$100(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->val$value:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->val$serialize:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->put(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "LocalDataManager$7#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->onPostExecute(Ljava/lang/Void;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "LocalDataManager$7#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 906
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 907
    const-string v0, "Object updated in Cache"

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 908
    return-void
.end method
