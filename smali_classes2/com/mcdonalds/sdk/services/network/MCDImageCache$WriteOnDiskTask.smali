.class Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;
.super Landroid/os/AsyncTask;
.source "MCDImageCache.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/network/MCDImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteOnDiskTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/mcdonalds/sdk/services/network/MCDImageCache;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/services/network/MCDImageCache;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->this$0:Lcom/mcdonalds/sdk/services/network/MCDImageCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 173
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->mKey:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->mKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->this$0:Lcom/mcdonalds/sdk/services/network/MCDImageCache;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->access$100(Lcom/mcdonalds/sdk/services/network/MCDImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MCDImageCache$WriteOnDiskTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MCDImageCache$WriteOnDiskTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/MCDImageCache;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iput-object v3, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 190
    iput-object v3, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->mKey:Ljava/lang/String;

    .line 191
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MCDImageCache$WriteOnDiskTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/network/MCDImageCache$WriteOnDiskTask;->onPostExecute(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MCDImageCache$WriteOnDiskTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
