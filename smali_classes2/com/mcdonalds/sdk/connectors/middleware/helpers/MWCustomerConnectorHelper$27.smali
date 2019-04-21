.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$27;
.super Ljava/lang/Object;
.source "MWCustomerConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->updatePayments(Ljava/lang/String;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

.field final synthetic val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$27;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$27;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$27;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 1283
    const/4 v0, 0x0

    .line 1284
    .local v0, "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    move-object v1, p3

    .line 1286
    .local v1, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_0

    .line 1287
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;->getResultCode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 1288
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v1

    .line 1294
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$27;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 1295
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->toCustomer(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$27;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    .line 1294
    invoke-interface {v2, v3, v4, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1297
    return-void

    .line 1290
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    .restart local v0    # "customerData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;
    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 1280
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$27;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
