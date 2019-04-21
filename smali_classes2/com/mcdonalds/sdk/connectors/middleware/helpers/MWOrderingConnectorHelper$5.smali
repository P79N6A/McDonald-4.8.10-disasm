.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$5;
.super Ljava/lang/Object;
.source "MWOrderingConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->enteredStoreBoundaryForOrder(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWBoundaryCrossCheckInResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$5;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWBoundaryCrossCheckInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 1
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWBoundaryCrossCheckInResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 274
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 268
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWBoundaryCrossCheckInResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$5;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWBoundaryCrossCheckInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
