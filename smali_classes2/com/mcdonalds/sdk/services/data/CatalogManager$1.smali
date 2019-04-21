.class Lcom/mcdonalds/sdk/services/data/CatalogManager$1;
.super Landroid/os/AsyncTask;
.source "CatalogManager.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/data/CatalogManager;->asyncPersist(Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;)V
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

.field final synthetic this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/data/CatalogManager;Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager;

    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->val$listener:Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "CatalogManager$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "CatalogManager$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 193
    const-string v0, "CatalogManager"

    const-string v1, "Updating db started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->access$000(Lcom/mcdonalds/sdk/services/data/CatalogManager;)V

    .line 195
    const-string v0, "CatalogManager"

    const-string v1, "Updating db ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "CatalogManager$1#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->onPostExecute(Ljava/lang/Void;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "CatalogManager$1#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->access$100(Lcom/mcdonalds/sdk/services/data/CatalogManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 203
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->val$listener:Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$1;->val$listener:Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;->onComplete()V

    .line 206
    :cond_0
    return-void
.end method
