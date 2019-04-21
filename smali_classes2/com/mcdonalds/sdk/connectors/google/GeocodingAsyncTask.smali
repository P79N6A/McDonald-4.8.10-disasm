.class public Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;
.super Landroid/os/AsyncTask;
.source "GeocodingAsyncTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTaskListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/location/Address;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 31
    array-length v4, p1

    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    .line 32
    const-string v4, "Improper execution of GeocodingTask, parameter count incorrect"

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->fatal(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-object v5

    .line 36
    :cond_0
    aget-object v0, p1, v7

    check-cast v0, Ljava/lang/String;

    .line 37
    .local v0, "address":Ljava/lang/String;
    aget-object v4, p1, v8

    check-cast v4, Landroid/content/Context;

    iput-object v4, p0, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->mContext:Landroid/content/Context;

    .line 38
    const/4 v4, 0x2

    aget-object v4, p1, v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTaskListener;

    iput-object v4, p0, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->mListener:Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTaskListener;

    .line 40
    new-instance v1, Landroid/location/Geocoder;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->mContext:Landroid/content/Context;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 43
    .local v1, "geocoder":Landroid/location/Geocoder;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v0, v4}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 44
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    goto :goto_1

    .line 45
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    .line 47
    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "GeocodingAsyncTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->doInBackground([Ljava/lang/Object;)Landroid/location/Address;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GeocodingAsyncTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/location/Address;)V
    .locals 5
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    const/4 v4, 0x0

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->mListener:Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTaskListener;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTaskListener;->onResponse(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->mListener:Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTaskListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->mContext:Landroid/content/Context;

    sget v2, Lcom/mcdonalds/sdk/R$string;->error_could_not_determine_address:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v4, v1}, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTaskListener;->onResponse(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "GeocodingAsyncTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    check-cast p1, Landroid/location/Address;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTask;->onPostExecute(Landroid/location/Address;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GeocodingAsyncTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
