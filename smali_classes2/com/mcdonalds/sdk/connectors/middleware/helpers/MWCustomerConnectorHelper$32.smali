.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$32;
.super Ljava/lang/Object;
.source "MWCustomerConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->getDefaultAddress(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$32;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$32;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 1432
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$32;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    const/4 v4, 0x0

    .line 1435
    const/4 v1, 0x0

    .line 1436
    .local v1, "result":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    if-eqz p1, :cond_1

    .line 1437
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 1438
    .local v0, "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1439
    move-object v1, v0

    .line 1445
    .end local v0    # "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$32;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v2, v1, v4, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1446
    return-void
.end method
