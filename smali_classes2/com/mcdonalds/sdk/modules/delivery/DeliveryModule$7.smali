.class Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$7;
.super Ljava/lang/Object;
.source "DeliveryModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStatusFromNetwork(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$7;->this$0:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$7;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 255
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$7;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;"
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$7;->this$0:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->access$200(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 259
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;

    .line 260
    .local v0, "deliveryStatusResponse":Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$7;->this$0:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->access$200(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->getOrderNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    .end local v0    # "deliveryStatusResponse":Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$7;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 263
    return-void
.end method
