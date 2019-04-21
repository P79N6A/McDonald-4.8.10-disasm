.class final Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;
.super Landroid/os/AsyncTask;
.source "OfferRedeemFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/offers/OfferRedeemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenerateCodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferRedeemFragment;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/offers/OfferRedeemFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;->this$0:Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/offers/OfferRedeemFragment;Lcom/mcdonalds/app/offers/OfferRedeemFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/offers/OfferRedeemFragment;
    .param p2, "x1"    # Lcom/mcdonalds/app/offers/OfferRedeemFragment$1;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;-><init>(Lcom/mcdonalds/app/offers/OfferRedeemFragment;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const-string v1, "doInBackground"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;->this$0:Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v0

    .line 163
    .local v0, "size":I
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;->this$0:Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->access$100(Lcom/mcdonalds/app/offers/OfferRedeemFragment;)Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->getBarCodeContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mcdonalds/app/util/Barcode;->generateAztec(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OfferRedeemFragment$GenerateCodeTask#doInBackground"

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

    .line 156
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OfferRedeemFragment$GenerateCodeTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const-string v0, "onPostExecute"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;->this$0:Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->access$200(Lcom/mcdonalds/app/offers/OfferRedeemFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OfferRedeemFragment$GenerateCodeTask#onPostExecute"

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

    .line 156
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OfferRedeemFragment$GenerateCodeTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
