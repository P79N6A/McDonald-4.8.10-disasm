.class Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$1;
.super Ljava/lang/Object;
.source "RequestManagerServiceConnection.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processTokenQueue()V
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$shouldDeleteSessionOnComplete:Z


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$1;->this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    iput-boolean p2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$1;->val$shouldDeleteSessionOnComplete:Z

    iput-object p3, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$1;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Void;>;"
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$1;->val$shouldDeleteSessionOnComplete:Z

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "Middleware"

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    .line 106
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignOutRequest;

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$1;->val$sessionToken:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignOutRequest;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignOutRequest;
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$1;->this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->access$000(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)Lcom/mcdonalds/sdk/services/network/RequestManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestManager;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 111
    .end local v0    # "connector":Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .end local v1    # "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignOutRequest;
    :cond_0
    return-void
.end method
