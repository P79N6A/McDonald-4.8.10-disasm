.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;
.super Ljava/lang/Object;
.source "MWDCSConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;

.field final synthetic val$authenticationResponse:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;->val$authenticationResponse:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p1, "profileWithCards"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;

    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;->val$authenticationResponse:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;->getDetails()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;->profile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->access$002(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    .line 99
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;->val$authenticationResponse:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;)V

    .line 100
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 101
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$1$1;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
