.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$4;
.super Ljava/lang/Object;
.source "MWCustomerConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->register(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

.field final synthetic val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$4;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$4;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 371
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$4;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    invoke-static {v2, p3, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;)Lcom/mcdonalds/sdk/AsyncException;

    move-result-object v0

    .line 372
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    const/4 v1, 0x0

    .line 373
    .local v1, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;->getCustomerData()Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;->getCustomerData()Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;->toCustomer(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerData;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 381
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v2, v1, p2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 382
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$4;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 368
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$4;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
