.class public Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;
.super Ljava/lang/Object;
.source "OrderSuccessAction.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderAmt:I

.field private mOrderId:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "orderAmt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;->mUserId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;->mOrderId:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;->mOrderAmt:I

    .line 23
    iput-object p4, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;->mList:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public doAction(Landroid/content/Context;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;->mOrderId:Ljava/lang/String;

    iget v2, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;->mOrderAmt:I

    int-to-float v2, v2

    const-string v3, "CNY"

    invoke-static {v1, v2, v3}, Lcom/admaster/square/utils/Order;->createOrder(Ljava/lang/String;FLjava/lang/String;)Lcom/admaster/square/utils/Order;

    move-result-object v0

    .line 28
    .local v0, "order":Lcom/admaster/square/utils/Order;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;

    .line 29
    .local v6, "item":Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->getOrderItemCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->getOrderItemId()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->getOrderItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->getOrderUnitPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->getOrderItemCount()I

    move-result v5

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/admaster/square/utils/Order;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/admaster/square/utils/Order;

    goto :goto_0

    .line 32
    .end local v6    # "item":Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderSuccessAction;->mUserId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/admaster/square/api/ConvMobiSDK;->orderPaySucc(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V

    .line 33
    return-void
.end method
