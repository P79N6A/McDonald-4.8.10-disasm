.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$7;
.super Ljava/lang/Object;
.source "MWDCSConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->sendRating(Ljava/lang/String;Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$7;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$7;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x2b03

    if-ne v1, v2, :cond_0

    .line 288
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$7;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, p2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 291
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$7;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, p2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 284
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$7;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
