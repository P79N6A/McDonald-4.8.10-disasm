.class Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$6;
.super Ljava/lang/Object;
.source "DeliveryModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStatus(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
    .line 225
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$6;->this$0:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$6;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 225
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$6;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
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
    .line 228
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$6;->this$0:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->access$102(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Z)Z

    .line 229
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$6;->this$0:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$6;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStatus(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 230
    return-void
.end method
