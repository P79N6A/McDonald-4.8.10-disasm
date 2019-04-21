.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;
.super Ljava/lang/Object;
.source "MWDCSConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->processUpdateProfileRequest(Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;Lcom/mcdonalds/sdk/AsyncListener;)V
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
    .line 660
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

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

    .line 663
    if-eqz p1, :cond_1

    .line 664
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x2b03

    if-ne v1, v2, :cond_0

    .line 665
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->access$400(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 673
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 668
    .local v0, "localException":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, p2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 671
    .end local v0    # "localException":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 660
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$18;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
