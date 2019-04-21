.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$1;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;",
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
    .line 115
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$1;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 119
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setRefreshing(Z)V

    .line 120
    move-object v0, p3

    .line 121
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;->getResultCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;->getResultCode()I

    move-result v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 132
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$1;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v1, p1, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 133
    return-void

    .line 124
    :cond_1
    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;->getAccessData()Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;

    move-result-object v1

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;->token:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setToken(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->notifyTokenRefreshed()V

    .line 128
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInData;->getAccessData()Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;

    move-result-object v1

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAccessData;->appParameter:Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->setAppParams(Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$1;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
