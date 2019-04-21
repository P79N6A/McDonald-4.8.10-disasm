.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;
.super Ljava/lang/Object;
.source "MWCustomerRecentOrderData.java"


# instance fields
.field public data:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;",
            ">;"
        }
    .end annotation
.end field

.field private isFinalized:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsFinalized"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field private orderNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayOrderNumber"
    .end annotation
.end field

.field public recentOrderID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RecentOrderID"
    .end annotation
.end field

.field private serviceMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ServiceMode"
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

.method public static toCustomerOrder(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;)Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    .locals 5
    .param p0, "ecpRecentOrder"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;

    .prologue
    .line 29
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;-><init>()V

    .line 31
    .local v2, "ret":Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;->recentOrderID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->setOrderId(Ljava/lang/Integer;)V

    .line 32
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->setName(Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;->orderNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->setOrderNumber(Ljava/lang/String;)V

    .line 34
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;->serviceMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->setServiceMode(Ljava/lang/Integer;)V

    .line 35
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;->isFinalized:Z

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->setFinalized(Z)V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;->data:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    .line 40
    .local v0, "productView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    .end local v0    # "productView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->setProducts(Ljava/util/List;)V

    .line 46
    return-object v2
.end method

.method public static toCustomerOrderList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "ecpRecentOrders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "customerOrders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 53
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;

    .line 55
    .local v1, "ecpOrder":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;
    iget-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;->data:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 56
    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;->toCustomerOrder(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;)Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "ecpOrder":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerRecentOrderData;
    :cond_1
    return-object v0
.end method
