.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$2;
.super Ljava/lang/Object;
.source "MWConnectorShared.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->signIn(Lcom/mcdonalds/sdk/AsyncListener;Z)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

.field final synthetic val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$2;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 140
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setRefreshing(Z)V

    .line 141
    move-object v0, p3

    .line 142
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x2b03

    if-eq v1, v2, :cond_1

    .line 144
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 153
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$2;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v1, v2, v3, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 154
    return-void

    .line 145
    :cond_1
    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;->getDetails()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse$DCSApplicationSecurityDetails;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse$DCSApplicationSecurityDetails;->token:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setToken(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->notifyTokenRefreshed()V

    .line 149
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;->getDetails()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse$DCSApplicationSecurityDetails;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse$DCSApplicationSecurityDetails;->token:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->retrieveAppParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$2;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
