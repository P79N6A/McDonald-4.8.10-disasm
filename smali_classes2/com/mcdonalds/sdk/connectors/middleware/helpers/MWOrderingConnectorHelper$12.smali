.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;
.super Ljava/lang/Object;
.source "MWOrderingConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->foundationalCheckIn(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 549
    .local v0, "orderResponse":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;->orderView:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    if-eqz v1, :cond_0

    .line 550
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;->toOrderView(Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;)Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fromFoundationalCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v1, v0, v2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v1, v2, v3, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 544
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$12;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
