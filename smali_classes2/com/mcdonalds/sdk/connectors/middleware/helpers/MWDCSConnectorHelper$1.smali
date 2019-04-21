.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;
.super Ljava/lang/Object;
.source "MWDCSConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->signIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "authenticationResponse"    # Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    .line 89
    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x2b03

    if-ne v2, v3, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;->getDetails()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;->profile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->toCustomerProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 92
    .local v1, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;)V

    invoke-static {v2, v1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->access$200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 110
    .end local v1    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 105
    .local v0, "localException":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v2, v4, p2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 108
    .end local v0    # "localException":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v2, v4, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
