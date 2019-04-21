.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;
.super Ljava/lang/Object;
.source "MWOrderViewInput.java"


# instance fields
.field public payment:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Payment"
    .end annotation
.end field

.field public products:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Products"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;
    .locals 5
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    .line 20
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;-><init>()V

    .line 23
    .local v1, "orderView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;->products:Ljava/util/List;

    .line 26
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 27
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;-><init>()V

    .line 28
    .local v2, "productViewInput":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;
    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;

    .line 29
    iget-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;->products:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "productViewInput":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;->fromOrderPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;

    move-result-object v3

    iput-object v3, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;->payment:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;

    .line 39
    :goto_1
    return-object v1

    .line 36
    :cond_1
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;->payment:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;

    goto :goto_1
.end method
