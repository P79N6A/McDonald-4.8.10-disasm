.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$3;
.super Ljava/lang/Object;
.source "MWCatalogManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->performSingleMarketUpdate()V
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    .line 314
    .local p1, "response":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<Ljava/lang/String;>;"
    invoke-static {p1, p3}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnectorUtils;->exceptionFromResults(Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;Lcom/mcdonalds/sdk/AsyncException;)Lcom/mcdonalds/sdk/AsyncException;

    move-result-object v1

    .line 316
    .local v1, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz v1, :cond_0

    .line 318
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v2, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$502(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/AsyncException;)Lcom/mcdonalds/sdk/AsyncException;

    .line 319
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1500(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V

    .line 332
    :goto_0
    return-void

    .line 323
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1500(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V

    goto :goto_0

    .line 329
    :cond_2
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;

    .line 330
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;)V

    invoke-direct {v0, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;)V

    .line 331
    .local v0, "asyncTask":Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->execute()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$3;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
