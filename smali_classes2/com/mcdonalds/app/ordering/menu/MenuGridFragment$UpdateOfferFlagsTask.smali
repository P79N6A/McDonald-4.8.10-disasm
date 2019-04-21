.class Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;
.super Landroid/os/AsyncTask;
.source "MenuGridFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateOfferFlagsTask"
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

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;
    .param p2, "x1"    # Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$1;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MenuGridFragment$UpdateOfferFlagsTask#doInBackground"

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

    .line 413
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MenuGridFragment$UpdateOfferFlagsTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    const-string v0, "doInBackground"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "userName":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    .line 421
    .local v6, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v6, :cond_0

    .line 422
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask$1;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;)V

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 434
    .end local v1    # "userName":Ljava/lang/String;
    .end local v6    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    return-object v3
.end method
