.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;
.super Ljava/lang/Object;
.source "MWOrderingConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

.field final synthetic val$allowedResultCodes:Ljava/util/List;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;->val$allowedResultCodes:Ljava/util/List;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, "orderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    move-object v0, p3

    .line 507
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_1

    .line 509
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;->val$allowedResultCodes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;->getResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 513
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 515
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->toOrderResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    .line 516
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsOutOfStock()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 517
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->access$200()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 526
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v2, v1, v3, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 527
    return-void

    .line 518
    :cond_2
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsNotAvailable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 519
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->access$300()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    goto :goto_0

    .line 521
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;->getResultCode()I

    move-result v2

    const/16 v3, -0x40b

    if-ne v2, v3, :cond_1

    .line 522
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 501
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$11;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWPreparePaymentResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
