.class public Lcom/mcdonalds/app/widget/GeoLocationTask;
.super Landroid/os/AsyncTask;
.source "GeoLocationTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private listener:Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;

.field private mNorthwestBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

.field private mSoutheastBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "GeoLocationTask#doInBackground"

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

    .line 15
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/widget/GeoLocationTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GeoLocationTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v0, "doInBackground"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->mSoutheastBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->mNorthwestBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    if-nez v0, :cond_1

    .line 32
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->searchAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v0

    aget-object v1, p1, v2

    iget-object v2, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->mSoutheastBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    iget-wide v2, v2, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->mSoutheastBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    iget-wide v4, v4, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->longitude:D

    iget-object v6, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->mNorthwestBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    iget-wide v6, v6, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->latitude:D

    iget-object v8, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->mNorthwestBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    iget-wide v8, v8, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v0 .. v9}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->searchAddress(Ljava/lang/String;DDDD)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "GeoLocationTask#onPostExecute"

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

    .line 15
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/widget/GeoLocationTask;->onPostExecute(Ljava/util/List;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GeoLocationTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const-string v2, "onPostExecute"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v2, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->listener:Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 46
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 47
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v0    # "address":Landroid/location/Address;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->listener:Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;

    invoke-interface {v2, v1}, Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;->onGeolocation(Ljava/util/List;)V

    .line 53
    .end local v1    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->listener:Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;

    .line 54
    return-void
.end method

.method public setBounds(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)Lcom/mcdonalds/app/widget/GeoLocationTask;
    .locals 3
    .param p1, "northwestBound"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .param p2, "southeastBound"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .prologue
    const-string v0, "setBounds"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->mNorthwestBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 24
    iput-object p2, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->mSoutheastBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 26
    return-object p0
.end method

.method public setListener(Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;)Lcom/mcdonalds/app/widget/GeoLocationTask;
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;

    .prologue
    const-string v0, "setListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/mcdonalds/app/widget/GeoLocationTask;->listener:Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;

    .line 58
    return-object p0
.end method
