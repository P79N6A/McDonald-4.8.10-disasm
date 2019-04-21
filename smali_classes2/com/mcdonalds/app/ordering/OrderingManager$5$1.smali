.class Lcom/mcdonalds/app/ordering/OrderingManager$5$1;
.super Ljava/lang/Object;
.source "OrderingManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/OrderingManager$5;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/OrderingManager$5;

.field final synthetic val$orderResponse:Lcom/mcdonalds/sdk/modules/models/OrderResponse;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/OrderingManager$5;Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/OrderingManager$5;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5$1;->this$1:Lcom/mcdonalds/app/ordering/OrderingManager$5;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5$1;->val$orderResponse:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/OrderingManager$5$1;->onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    if-eqz p1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5$1;->this$1:Lcom/mcdonalds/app/ordering/OrderingManager$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/OrderingManager$5;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/utils/Utils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setIpAddress(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5$1;->this$1:Lcom/mcdonalds/app/ordering/OrderingManager$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/OrderingManager$5;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setDeviceFingerPrintId(Ljava/lang/String;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5$1;->this$1:Lcom/mcdonalds/app/ordering/OrderingManager$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/OrderingManager$5;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5$1;->val$orderResponse:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-interface {v0, v1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 501
    return-void
.end method
