.class Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;
.super Ljava/lang/Thread;
.source "OrderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/OrderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomerOrdersConversionThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private isFavorite:Z

.field private mCustomerOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;ZLcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p2, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .param p3, "isFavorite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "customerOrders":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->mCustomerOrders:Ljava/util/List;

    .line 88
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 89
    iput-boolean p3, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->isFavorite:Z

    .line 91
    iput-object p4, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->handler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.OrderUtils$CustomerOrdersConversionThread"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-string v5, "run"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;"
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->mCustomerOrders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    .line 99
    .local v0, "customerOrder":Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    if-eqz v0, :cond_0

    .line 100
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-static {v0, v6}, Lcom/mcdonalds/app/ordering/OrderUtils;->access$000(Lcom/mcdonalds/sdk/modules/models/CustomerOrder;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    .line 102
    .local v2, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    iget-boolean v6, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->isFavorite:Z

    if-eqz v6, :cond_2

    move-object v1, v0

    .line 103
    check-cast v1, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 104
    .local v1, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getFavoriteId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setFavoriteId(Ljava/lang/Integer;)V

    .line 105
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setFavoriteName(Ljava/lang/String;)V

    .line 112
    .end local v1    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    :goto_1
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 114
    .local v3, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "7030"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->removeProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_2

    .line 107
    .end local v3    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getOrderId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setRecentId(Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setRecentName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->getOrderNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setOrderNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v0    # "customerOrder":Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    .end local v2    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_4
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread$1;

    invoke-direct {v6, p0, v4}, Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread$1;-><init>(Lcom/mcdonalds/app/ordering/OrderUtils$CustomerOrdersConversionThread;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
