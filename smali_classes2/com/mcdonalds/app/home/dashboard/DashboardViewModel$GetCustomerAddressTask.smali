.class Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;
.super Landroid/os/AsyncTask;
.source "DashboardViewModel.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCustomerAddressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncCounter",
            "<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Landroid/content/Context;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/AsyncCounter",
            "<",
            "Ljava/util/List;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1022
    .local p3, "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/util/List;>;"
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1023
    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->mContext:Landroid/content/Context;

    .line 1024
    iput-object p3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    .line 1025
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Landroid/location/Address;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "doInBackground"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    aget-object v3, p1, v6

    .line 1031
    .local v3, "zipCode":Ljava/lang/String;
    new-instance v0, Landroid/location/Geocoder;

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->mContext:Landroid/content/Context;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 1035
    .local v0, "geocoder":Landroid/location/Geocoder;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1036
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1037
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :goto_0
    return-object v4

    .line 1040
    :catch_0
    move-exception v1

    .line 1041
    .local v1, "ioe":Ljava/io/IOException;
    invoke-static {}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "geocoding error"

    invoke-static {v4, v5, v1}, Lcom/mcdonalds/app/util/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1044
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DashboardViewModel$GetCustomerAddressTask#doInBackground"

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

    .line 1017
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->doInBackground([Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DashboardViewModel$GetCustomerAddressTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/location/Address;)V
    .locals 4
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onPostExecute"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1051
    if-eqz p1, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1900(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncCounter;)V

    .line 1058
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->mAsyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-static {v0, v3, v3, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->access$1900(Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncCounter;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DashboardViewModel$GetCustomerAddressTask#onPostExecute"

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

    .line 1017
    check-cast p1, Landroid/location/Address;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel$GetCustomerAddressTask;->onPostExecute(Landroid/location/Address;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DashboardViewModel$GetCustomerAddressTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
