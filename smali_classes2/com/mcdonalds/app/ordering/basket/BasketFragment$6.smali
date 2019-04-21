.class Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;
.super Ljava/lang/Object;
.source "BasketFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateProducts()V
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
        "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

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

    .line 562
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
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

    .line 565
    if-nez p3, :cond_2

    .line 567
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getUnavailableProductCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$802(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Ljava/util/List;)Ljava/util/List;

    .line 568
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$800(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$902(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Z)Z

    .line 574
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$900(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$1200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->productEdited()V

    .line 577
    :cond_1
    return-void

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$6;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$902(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Z)Z

    goto :goto_0
.end method
