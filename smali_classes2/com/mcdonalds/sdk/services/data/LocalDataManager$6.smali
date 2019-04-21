.class Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;
.super Landroid/os/AsyncTask;
.source "LocalDataManager.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;JZLcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;)V
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

.field final synthetic val$expirationInterval:J

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;

.field final synthetic val$serialize:Z

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;Ljava/lang/String;JZLjava/lang/Object;Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$expirationInterval:J

    iput-boolean p5, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$serialize:Z

    iput-object p6, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$value:Ljava/lang/Object;

    iput-object p7, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$listener:Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "LocalDataManager$6#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "LocalDataManager$6#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 834
    :try_start_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$key:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->access$000(Lcom/mcdonalds/sdk/services/data/LocalDataManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "cacheExpKey":Ljava/lang/String;
    iget-wide v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$expirationInterval:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$expirationInterval:J

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 837
    .local v2, "expirationTime":Ljava/lang/Long;
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    invoke-static {v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->access$100(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$serialize:Z

    invoke-virtual {v3, v0, v2, v4}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 843
    .end local v2    # "expirationTime":Ljava/lang/Long;
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    invoke-static {v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->access$100(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$key:Ljava/lang/String;

    iget-object v5, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$value:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$serialize:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 847
    .end local v0    # "cacheExpKey":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 839
    .restart local v0    # "cacheExpKey":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->this$0:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    invoke-static {v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->access$100(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->delete(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    .end local v0    # "cacheExpKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 845
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error trying to add object to cache"

    invoke-static {v3, v4, v1}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "LocalDataManager$6#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_0
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->onPostExecute(Ljava/lang/Void;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "LocalDataManager$6#onPostExecute"

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
    .line 852
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$listener:Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->val$listener:Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;->onSaveCompleted()V

    .line 856
    :cond_0
    return-void
.end method
