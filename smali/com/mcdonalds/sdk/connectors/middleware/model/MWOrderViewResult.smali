.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;
.super Ljava/lang/Object;
.source "MWOrderViewResult.java"


# instance fields
.field public checkInCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CheckInCode"
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

.field public estimatedDeliveryTimeInStoreLocalTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EstimatedDeliveryTimeInStoreLocalTime"
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
        value = "OrderDate"
    .end annotation
.end field

.field public orderDateInStoreLocalTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderDateInStoreLocalTime"
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
        alternate = {
            "StoreId"
        }
        value = "StoreID"
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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toOrderView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;)Lcom/mcdonalds/sdk/modules/models/OrderView;
    .locals 14
    .param p0, "ecpOrderViewResult"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    .prologue
    .line 85
    new-instance v5, Lcom/mcdonalds/sdk/modules/models/OrderView;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/modules/models/OrderView;-><init>()V

    .line 86
    .local v5, "order":Lcom/mcdonalds/sdk/modules/models/OrderView;
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->storeID:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setStoreID(Ljava/lang/String;)V

    .line 87
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->nickName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setNickName(Ljava/lang/String;)V

    .line 88
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->orderNumber:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderNumber(Ljava/lang/String;)V

    .line 89
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->orderValue:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderValue(Ljava/lang/Double;)V

    .line 90
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->totalValue:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalValue(Ljava/lang/Double;)V

    .line 91
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->totalTax:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalTax(Ljava/lang/Double;)V

    .line 92
    iget v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->totalEnergy:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalEnergy(Ljava/lang/Integer;)V

    .line 93
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->totalDiscount:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalDiscount(Ljava/lang/Double;)V

    .line 94
    iget-wide v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->totalDue:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setTotalDue(Ljava/lang/Double;)V

    .line 95
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->deliveryFee:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryFee;

    if-eqz v12, :cond_0

    .line 96
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->deliveryFee:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryFee;

    iget-object v12, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryFee;->price:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setDeliveryFee(Ljava/lang/Double;)V

    .line 99
    :cond_0
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->productionResponse:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;

    if-eqz v12, :cond_1

    .line 100
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->productionResponse:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;

    invoke-static {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;->toOrderProductionResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;)Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderProductionResponse(Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;)V

    .line 103
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v8, "productList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->products:Ljava/util/List;

    invoke-static {v12}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 105
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->products:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_2

    .line 106
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->products:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    .line 107
    .local v4, "mwProductView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->toProductView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;)Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v9

    .line 108
    .local v9, "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    .end local v4    # "mwProductView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    .end local v9    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_2
    invoke-virtual {v5, v8}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setProducts(Ljava/util/List;)V

    .line 114
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v11, "promotionsList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PromotionView;>;"
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->promotions:Ljava/util/List;

    if-eqz v12, :cond_3

    .line 117
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->promotions:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_3

    .line 119
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->promotions:Ljava/util/List;

    .line 120
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;

    invoke-static {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;->toPromotionView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;)Lcom/mcdonalds/sdk/modules/models/PromotionView;

    move-result-object v10

    .line 122
    .local v10, "promotionView":Lcom/mcdonalds/sdk/modules/models/PromotionView;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    .end local v2    # "i":I
    .end local v10    # "promotionView":Lcom/mcdonalds/sdk/modules/models/PromotionView;
    :cond_3
    invoke-virtual {v5, v11}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setPromotions(Ljava/util/List;)V

    .line 129
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->payments:Ljava/util/List;

    if-eqz v12, :cond_4

    .line 130
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->payments:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;

    .line 131
    .local v3, "mwOrderPaymentResult":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;-><init>()V

    .line 132
    .local v7, "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    iget-object v13, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->cardAlias:Ljava/lang/String;

    invoke-virtual {v7, v13}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setAlias(Ljava/lang/String;)V

    .line 133
    iget-object v13, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->cardExpiration:Ljava/lang/String;

    invoke-virtual {v7, v13}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setExpiration(Ljava/lang/String;)V

    .line 134
    iget-object v13, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->cardHolderName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setHolderName(Ljava/lang/String;)V

    .line 135
    iget-boolean v13, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->isPreferred:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsPreferred(Ljava/lang/Boolean;)V

    .line 136
    iget-object v13, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->isValid:Ljava/lang/Boolean;

    invoke-virtual {v7, v13}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsValid(Ljava/lang/Boolean;)V

    .line 137
    iget-object v13, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->nickName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setNickName(Ljava/lang/String;)V

    .line 138
    iget v13, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;->paymentMethodId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setPaymentMethodId(Ljava/lang/Integer;)V

    .line 139
    invoke-virtual {v5, v7}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    goto :goto_2

    .line 145
    .end local v3    # "mwOrderPaymentResult":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPaymentResult;
    .end local v7    # "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_4
    :try_start_0
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->orderDate:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 146
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->orderDate:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v6

    .line 147
    .local v6, "orderDate":Ljava/util/Date;
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderDate(Ljava/util/Date;)V

    .line 150
    .end local v6    # "orderDate":Ljava/util/Date;
    :cond_5
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->estimatedDeliveryTime:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 151
    iget-object v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->estimatedDeliveryTime:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v1

    .line 152
    .local v1, "edt":Ljava/util/Date;
    invoke-virtual {v5, v1}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setEstimatedDeliveryTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "edt":Ljava/util/Date;
    :cond_6
    :goto_3
    iget-boolean v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->isLargeOrder:Z

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setIsLargeOrder(Z)V

    .line 160
    iget-boolean v12, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->isConfirmationNeeded:Z

    invoke-virtual {v5, v12}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setConfirmationNeeded(Z)V

    .line 162
    return-object v5

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3
.end method
