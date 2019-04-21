.class Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;
.super Landroid/os/AsyncTask;
.source "OrderCheckinFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->run()V
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
        "Lcom/mcdonalds/app/ordering/alipay/PayResult;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/mcdonalds/app/ordering/alipay/PayResult;
    .locals 3
    .param p1, "arg"    # [Ljava/lang/Void;

    .prologue
    const-string v0, "doInBackground"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$700(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)Lcom/mcdonalds/app/ordering/alipay/PayResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OrderCheckinFragment$14$1#doInBackground"

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

    .line 1237
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->doInBackground([Ljava/lang/Void;)Lcom/mcdonalds/app/ordering/alipay/PayResult;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OrderCheckinFragment$14$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/mcdonalds/app/ordering/alipay/PayResult;)V
    .locals 6
    .param p1, "result"    # Lcom/mcdonalds/app/ordering/alipay/PayResult;

    .prologue
    const v4, 0x7f0902e5

    const-string v1, "onPostExecute"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    if-nez p1, :cond_0

    .line 1244
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v1, v4}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$800(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;I)V

    .line 1271
    :goto_0
    return-void

    .line 1245
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/alipay/PayResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1247
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/alipay/PayResult;->getResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setAlipayResult(Ljava/lang/String;)V

    .line 1248
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v4, v4, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v4, v4, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v5, v5, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$900(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mcdonalds/app/ordering/OrderingManager;->checkIn(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 1260
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/alipay/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "6001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1261
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v3, 0x7f09078e

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const v4, 0x7f0902c0

    .line 1262
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1261
    invoke-static {v1, v2, v3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1000(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1264
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/alipay/PayResult;->getMemo()Ljava/lang/String;

    move-result-object v0

    .line 1265
    .local v0, "memo":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1266
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$1100(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1268
    :cond_3
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v1, v4}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$800(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OrderCheckinFragment$14$1#onPostExecute"

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

    .line 1237
    check-cast p1, Lcom/mcdonalds/app/ordering/alipay/PayResult;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$14$1;->onPostExecute(Lcom/mcdonalds/app/ordering/alipay/PayResult;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OrderCheckinFragment$14$1#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
