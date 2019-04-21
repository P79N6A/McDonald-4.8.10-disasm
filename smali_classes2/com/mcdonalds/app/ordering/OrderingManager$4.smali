.class Lcom/mcdonalds/app/ordering/OrderingManager$4;
.super Ljava/lang/Object;
.source "OrderingManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/OrderingManager;->totalizePickUp(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/OrderingManager;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/OrderingManager;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/OrderingManager;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/OrderingManager$4;->this$0:Lcom/mcdonalds/app/ordering/OrderingManager;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/OrderingManager$4;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    if-nez p3, :cond_0

    .line 461
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderingManager$4;->this$0:Lcom/mcdonalds/app/ordering/OrderingManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setTotalizeResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 462
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderingManager$4;->this$0:Lcom/mcdonalds/app/ordering/OrderingManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setTotalizeBeforeCheckin(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderingManager$4;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 466
    return-void
.end method

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

    .line 457
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/OrderingManager$4;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
