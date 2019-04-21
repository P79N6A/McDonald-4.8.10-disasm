.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$3;
.super Ljava/lang/Object;
.source "MWConnectorShared.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->retrieveAppParameters(Ljava/lang/String;)V
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAppParametersResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAppParametersResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAppParametersResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAppParametersResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAppParametersResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->setAppParams(Ljava/util/List;)V

    .line 168
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAppParametersResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$3;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAppParametersResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
