.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;
.super Ljava/lang/Object;
.source "MWDeliveryOrderViewResult.java"


# instance fields
.field public couponValue:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CouponValue"
    .end annotation
.end field

.field public deliveryFee:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryFee;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SuggestedDeliveryFee"
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

.field public isMultiRidersAllowed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AreMultiRidersAllowed"
    .end annotation
.end field

.field public isPaidOrder:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsPaidOrder"
    .end annotation
.end field

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NickName"
    .end annotation
.end field

.field public orderDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderDateInStoreLocalTime"
    .end annotation
.end field

.field public orderDt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderDate"
    .end annotation
.end field

.field public orderNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderNumber"
    .end annotation
.end field

.field public orderPaymentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderPaymentId"
    .end annotation
.end field

.field public orderStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderStatus"
    .end annotation
.end field

.field public orderValue:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderValue"
    .end annotation
.end field

.field public payments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Payments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;",
            ">;"
        }
    .end annotation
.end field

.field public productionResponse:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductionResponse"
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

.field public restaurant:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RestaurantData"
    .end annotation
.end field

.field public storeID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreId"
    .end annotation
.end field

.field public tenderType:Ljava/lang/Byte;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenderType"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toOrderView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;)Lcom/mcdonalds/sdk/modules/models/OrderView;
    .locals 14
    .param p0, "ecpOrderViewResult"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;

    .prologue
    .line 77
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/OrderView;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/OrderView;-><init>()V

    .line 78
    .local v4, "order":Lcom/mcdonalds/sdk/modules/models/OrderView;
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->storeID:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setStoreID(Ljava/lang/String;)V

    .line 79
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->nickName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setNickName(Ljava/lang/String;)V

    .line 80
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->orderNumber:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderNumber(Ljava/lang/String;)V

    .line 81
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->orderValue:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderValue(Ljava/lang/Double;)V

    .line 82
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->totalValue:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalValue(Ljava/lang/Double;)V

    .line 83
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->totalTax:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalTax(Ljava/lang/Double;)V

    .line 84
    iget v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->totalEnergy:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalEnergy(Ljava/lang/Integer;)V

    .line 85
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->totalDiscount:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalDiscount(Ljava/lang/Double;)V

    .line 86
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->totalDue:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalDue(Ljava/lang/Double;)V

    .line 87
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->deliveryFee:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryFee;

    if-eqz v11, :cond_0

    .line 88
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->deliveryFee:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryFee;

    iget-object v11, v11, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryFee;->price:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setDeliveryFee(Ljava/lang/Double;)V

    .line 91
    :cond_0
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->productionResponse:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;

    if-eqz v11, :cond_1

    .line 92
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->productionResponse:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;

    invoke-static {v11}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;->toOrderProductionResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;)Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderProductionResponse(Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;)V

    .line 95
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v7, "productList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->products:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_2

    .line 97
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->products:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    invoke-static {v11}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->toProductView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;)Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v8

    .line 98
    .local v8, "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v8    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_2
    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setProducts(Ljava/util/List;)V

    .line 103
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v10, "promotionsList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PromotionView;>;"
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->promotions:Ljava/util/List;

    if-eqz v11, :cond_3

    .line 106
    const/4 v2, 0x0

    :goto_1
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->promotions:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_3

    .line 108
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->promotions:Ljava/util/List;

    .line 109
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;

    invoke-static {v11}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;->toPromotionView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;)Lcom/mcdonalds/sdk/modules/models/PromotionView;

    move-result-object v9

    .line 111
    .local v9, "promotionView":Lcom/mcdonalds/sdk/modules/models/PromotionView;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v9    # "promotionView":Lcom/mcdonalds/sdk/modules/models/PromotionView;
    :cond_3
    invoke-virtual {v4, v10}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setPromotions(Ljava/util/List;)V

    .line 117
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->payments:Ljava/util/List;

    if-eqz v11, :cond_4

    .line 118
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->payments:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;

    .line 119
    .local v3, "mwOrderPaymentResult":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;
    new-instance v6, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;-><init>()V

    .line 120
    .local v6, "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    iget-object v11, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->cardAlias:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setAlias(Ljava/lang/String;)V

    .line 121
    iget-object v11, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->cardExpiration:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setExpiration(Ljava/lang/String;)V

    .line 122
    iget-object v11, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->cardHolderName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setHolderName(Ljava/lang/String;)V

    .line 123
    iget-boolean v11, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->isPreferred:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsPreferred(Ljava/lang/Boolean;)V

    .line 124
    iget-object v11, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->isValid:Ljava/lang/Boolean;

    invoke-virtual {v6, v11}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsValid(Ljava/lang/Boolean;)V

    .line 125
    iget-object v11, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->nickName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setNickName(Ljava/lang/String;)V

    .line 126
    iget v11, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->paymentMethodId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setPaymentMethodId(Ljava/lang/Integer;)V

    .line 127
    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 132
    .end local v3    # "mwOrderPaymentResult":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;
    .end local v6    # "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_4
    :try_start_0
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->orderDt:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderDt(Ljava/lang/String;)V

    .line 133
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->orderDate:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 134
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->orderDate:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v5

    .line 135
    .local v5, "orderDate":Ljava/util/Date;
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderDate(Ljava/util/Date;)V

    .line 138
    .end local v5    # "orderDate":Ljava/util/Date;
    :cond_5
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->estimatedDeliveryTime:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 139
    iget-object v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->estimatedDeliveryTime:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v1

    .line 140
    .local v1, "edt":Ljava/util/Date;
    invoke-virtual {v4, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setEstimatedDeliveryTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "edt":Ljava/util/Date;
    :cond_6
    :goto_2
    iget-boolean v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->isLargeOrder:Z

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setIsLargeOrder(Z)V

    .line 148
    iget-boolean v11, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryOrderViewResult;->isConfirmationNeeded:Z

    invoke-virtual {v4, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setConfirmationNeeded(Z)V

    .line 150
    return-object v4

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2
.end method
