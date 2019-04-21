.class Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$2;
.super Ljava/lang/Object;
.source "RequestManagerServiceConnection.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
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
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$2;->this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 399
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setRefreshing(Z)V

    .line 400
    if-nez p3, :cond_0

    .line 401
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$2;->this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->access$100(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$2;->this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->access$200(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 393
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$2;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
