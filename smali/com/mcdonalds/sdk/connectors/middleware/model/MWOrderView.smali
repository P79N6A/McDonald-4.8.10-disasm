.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;
.super Ljava/lang/Object;
.source "MWOrderView.java"


# instance fields
.field public additionalPayments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AdditionalPayments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field public couponValue:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CouponValue"
    .end annotation
.end field

.field public deliveryFee:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryFee;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeliveryFee"
    .end annotation
.end field

.field public deposits:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Deposits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeposit;",
            ">;"
        }
    .end annotation
.end field

.field public estimatedDeliveryTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EstimatedDeliveryTime"
    .end annotation
.end field

.field public fees:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Fees"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWFee;",
            ">;"
        }
    .end annotation
.end field

.field public isConfirmationNeeded:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ConfirmationNeeded"
    .end annotation
.end field

.field public isEDTCalculationEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsEDTCalculationEnabled"
    .end annotation
.end field

.field public isLargeOrder:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsLargeOrder"
    .end annotation
.end field

.field public isNormalOrder:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsNormalOrder"
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LanguageName"
    .end annotation
.end field

.field public market:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Market"
    .end annotation
.end field

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NickName"
    .end annotation
.end field

.field public orderNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderNumber"
    .end annotation
.end field

.field public orderTableService:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TableService"
    .end annotation
.end field

.field public orderValue:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderValue"
    .end annotation
.end field

.field public payment:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Payment"
    .end annotation
.end field

.field public priceType:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PriceType"
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
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;",
            ">;"
        }
    .end annotation
.end field

.field public promotions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromotionListView"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;",
            ">;"
        }
    .end annotation
.end field

.field public storeID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreID"
    .end annotation
.end field

.field public totalDiscount:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalDiscount"
    .end annotation
.end field

.field public totalDue:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalDue"
    .end annotation
.end field

.field public totalEnergy:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalEnergy"
    .end annotation
.end field

.field public totalTax:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalTax"
    .end annotation
.end field

.field public totalValue:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalValue"
    .end annotation
.end field

.field public userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;
    .locals 1
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;Z)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    move-result-object v0

    return-object v0
.end method

.method public static fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;Z)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;
    .locals 8
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .param p1, "includePayment"    # Z

    .prologue
    const/4 v7, 0x0

    .line 118
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;-><init>()V

    .line 121
    .local v2, "orderView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->products:Ljava/util/List;

    .line 122
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 125
    .local v1, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;-><init>()V

    .line 126
    .local v3, "productView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    .line 127
    iget-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->products:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v1    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "productView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->promotions:Ljava/util/List;

    .line 133
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->promotions:Ljava/util/List;

    .line 136
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 137
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    iget-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->promotions:Ljava/util/List;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;->fromOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->language:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "connectors.Middleware.marketId"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->market:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNickName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, ""

    :goto_2
    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->nickName:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->userName:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->storeID:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v4

    iput-boolean v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->isNormalOrder:Z

    .line 147
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->EatIn:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    :goto_3
    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->priceType:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    .line 149
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->fromOrderPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;

    move-result-object v4

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->payment:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;

    .line 155
    :goto_4
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOrderTableService()Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOrderTableService()Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;->fromOrderTableService(Lcom/mcdonalds/sdk/modules/models/OrderTableService;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;

    move-result-object v4

    iput-object v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->orderTableService:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;

    .line 161
    :goto_5
    return-object v2

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNickName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 147
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->fromOrderPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    move-result-object v4

    goto :goto_3

    .line 152
    :cond_4
    iput-object v7, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->payment:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;

    goto :goto_4

    .line 158
    :cond_5
    iput-object v7, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->orderTableService:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;

    goto :goto_5
.end method

.method public static toOrderView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;)Lcom/mcdonalds/sdk/modules/models/OrderView;
    .locals 4
    .param p0, "ecpOrderViewResult"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    .prologue
    .line 100
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderView;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderView;-><init>()V

    .line 101
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/OrderView;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->storeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setStoreID(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setNickName(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->orderNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderNumber(Ljava/lang/String;)V

    .line 104
    iget-wide v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->orderValue:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderValue(Ljava/lang/Double;)V

    .line 105
    iget-wide v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->totalValue:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalValue(Ljava/lang/Double;)V

    .line 106
    iget-wide v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->totalTax:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalTax(Ljava/lang/Double;)V

    .line 107
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->totalEnergy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalEnergy(Ljava/lang/Integer;)V

    .line 108
    iget-wide v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->totalDiscount:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalDiscount(Ljava/lang/Double;)V

    .line 109
    iget-wide v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->totalDue:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalDue(Ljava/lang/Double;)V

    .line 113
    return-object v0
.end method
