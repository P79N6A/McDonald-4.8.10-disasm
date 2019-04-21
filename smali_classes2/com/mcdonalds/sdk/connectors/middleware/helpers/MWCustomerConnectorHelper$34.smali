.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;
.super Ljava/lang/Object;
.source "MWCustomerConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->validateAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWValidateAddressResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWValidateAddressResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWValidateAddressResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    .line 1499
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    invoke-static {v2, p3, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;)Lcom/mcdonalds/sdk/AsyncException;

    move-result-object v0

    .line 1501
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-nez v0, :cond_0

    .line 1502
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWValidateAddressResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressValidationResult;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressValidationResult;->toValidateResult(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressValidationResult;)Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;

    move-result-object v1

    .line 1503
    .local v1, "result":Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v2, v1, v3, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1507
    .end local v1    # "result":Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;
    :goto_0
    return-void

    .line 1505
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v2, v4, v3, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 1495
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWValidateAddressResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$34;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWValidateAddressResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
