.class final Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;
.super Ljava/lang/Object;
.source "OrderManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateProducts(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncCounter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

.field final synthetic val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field final synthetic val$orderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field final synthetic val$unavailableProductCodes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$orderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$unavailableProductCodes:Ljava/util/List;

    iput-object p4, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 313
    if-eqz p3, :cond_0

    .line 314
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no product found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    :cond_0
    if-eqz p1, :cond_3

    .line 317
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$orderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$unavailableProductCodes:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->access$000(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Ljava/util/List;)V

    .line 318
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 327
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 335
    :cond_2
    :goto_1
    return-void

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setUnavailable(Z)V

    .line 323
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$unavailableProductCodes:Ljava/util/List;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$unavailableProductCodes:Ljava/util/List;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_4
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p3}, Lcom/mcdonalds/sdk/AsyncCounter;->error(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
