.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;
.super Ljava/lang/Object;
.source "MWOrderingConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->totalize(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;",
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
    .line 443
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;->val$allowedResultCodes:Ljava/util/List;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, "orderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    move-object v0, p3

    .line 450
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_1

    .line 451
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;->val$allowedResultCodes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;->getResultCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 452
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;->getResultCode()I

    move-result v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 458
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderBarCodeView;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderBarCodeView;->orderViewResult:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    .line 457
    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->toOrderView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;)Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v2

    .line 461
    .local v2, "view":Lcom/mcdonalds/sdk/modules/models/OrderView;
    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fromTotalize(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    .line 467
    .end local v2    # "view":Lcom/mcdonalds/sdk/modules/models/OrderView;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v3, v1, v4, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 468
    return-void

    .line 462
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;->getResultCode()I

    move-result v3

    const/16 v4, -0x40b

    if-ne v3, v4, :cond_1

    .line 463
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;->getResultCode()I

    move-result v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 443
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$10;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
