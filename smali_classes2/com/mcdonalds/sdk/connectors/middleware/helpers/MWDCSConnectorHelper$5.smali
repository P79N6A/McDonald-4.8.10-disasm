.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;
.super Ljava/lang/Object;
.source "MWDCSConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->updateProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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

.field final synthetic val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

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

    .line 216
    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x2b03

    if-ne v1, v2, :cond_0

    .line 218
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper;->getCustomerData(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 221
    .local v0, "localException":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, p2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 224
    .end local v0    # "localException":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 213
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWDCSConnectorHelper$5;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
