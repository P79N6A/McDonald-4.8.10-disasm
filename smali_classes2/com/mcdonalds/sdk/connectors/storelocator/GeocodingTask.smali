.class public Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;
.super Landroid/os/AsyncTask;
.source "GeocodingTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/mcdonalds/sdk/AsyncToken;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mAsycListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConnector:Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

.field private mContext:Landroid/content/Context;

.field private mQuery:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

.field private mToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;
    .param p3, "query"    # Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;",
            "Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mConnector:Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    .line 39
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mQuery:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    .line 40
    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mAsycListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 41
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Lcom/mcdonalds/sdk/AsyncToken;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Lcom/mcdonalds/sdk/AsyncToken;

    .prologue
    const/4 v8, 0x0

    .line 46
    aget-object v5, p1, v8

    iput-object v5, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    .line 48
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mQuery:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->getSearchString()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "search":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 50
    new-instance v3, Landroid/location/Geocoder;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mContext:Landroid/content/Context;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 53
    .local v3, "geocoder":Landroid/location/Geocoder;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v4, v5}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 58
    .local v0, "address":Landroid/location/Address;
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mQuery:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLatitude(Ljava/lang/Double;)V

    .line 59
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mQuery:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLongitude(Ljava/lang/Double;)V

    .line 61
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 70
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v3    # "geocoder":Landroid/location/Geocoder;
    :goto_0
    return-object v5

    .line 64
    .restart local v3    # "geocoder":Landroid/location/Geocoder;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->LOG_TAG:Ljava/lang/String;

    const-string v6, "error trying to geocode location"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "geocoder":Landroid/location/Geocoder;
    :cond_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "GeocodingTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    check-cast p1, [Lcom/mcdonalds/sdk/AsyncToken;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->doInBackground([Lcom/mcdonalds/sdk/AsyncToken;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GeocodingTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mConnector:Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mQuery:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mAsycListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/StoreLocatorConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    const-string v1, "We were not able to find this address"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "exception":Lcom/mcdonalds/sdk/AsyncException;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mAsycListener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v1, v2, v3, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "GeocodingTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/storelocator/GeocodingTask;->onPostExecute(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GeocodingTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
