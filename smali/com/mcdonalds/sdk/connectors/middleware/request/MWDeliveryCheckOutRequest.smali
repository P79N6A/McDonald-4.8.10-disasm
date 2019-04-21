.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWDeliveryCheckOutRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryCheckOutResponse;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/order/finalization/delivery"


# instance fields
.field private final mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IIDLcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;)V
    .locals 14
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "storeId"    # Ljava/lang/String;
    .param p5, "notificationEmail"    # Ljava/lang/String;
    .param p6, "notificationPhoneNumber"    # Ljava/lang/String;
    .param p7, "requestedDeliveryTime"    # Ljava/util/Date;
    .param p8, "addressType"    # I
    .param p9, "tenderType"    # I
    .param p10, "tenderAmount"    # D
    .param p12, "orderView"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    invoke-direct/range {v1 .. v12}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IIDLcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 8
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 83
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 84
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 85
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 87
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v0

    .line 88
    .local v0, "deliveryTime":Ljava/util/Date;
    invoke-static {v0, v6}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatToISO8631(Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "deliveryTimeString":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v3, "userName"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "storeId"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "notificationEmail"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "notificationPhoneNumber"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "requestedDeliveryTime"

    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "addressType"

    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "isNormalOrder"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "orderView"

    invoke-static {p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;->fromOrder(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "cashlessAuthorization"

    invoke-virtual {v2, v3, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v3, "updateDefaultAddress"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "recentOrderToSave"

    invoke-virtual {v2, v3, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "tenderType"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getTenderType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "tenderAmount"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getTenderAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->invoiceRequested()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->isOrderRemarkAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "orderRemark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getInvoiceInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "***"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getOrderRemark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentResult()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "paymentResponse"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_1
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->clearPaymentResult()V

    .line 120
    return-void

    .line 107
    :cond_2
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->invoiceRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "orderRemark"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getInvoiceInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->isOrderRemarkAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "orderRemark"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Order;->getOrderRemarkString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IIDLcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;)V
    .locals 7
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "storeId"    # Ljava/lang/String;
    .param p4, "notificationEmail"    # Ljava/lang/String;
    .param p5, "notificationPhoneNumber"    # Ljava/lang/String;
    .param p6, "requestedDeliveryTime"    # Ljava/util/Date;
    .param p7, "addressType"    # I
    .param p8, "tenderType"    # I
    .param p9, "tenderAmount"    # D
    .param p11, "orderView"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewInput;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 63
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 64
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 67
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v2, "userName"

    invoke-virtual {v1, v2, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "storeId"

    invoke-virtual {v1, v2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "notificationEmail"

    invoke-virtual {v1, v2, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "notificationPhoneNumber"

    invoke-virtual {v1, v2, p5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "requestedDeliveryTime"

    invoke-virtual {v1, v2, p6}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "addressType"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "orderView"

    move-object/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "cashlessAuthorization"

    invoke-virtual {v1, v2, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v2, "updateDefaultAddress"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "recentOrderToSave"

    invoke-virtual {v1, v2, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "tenderType"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "tenderAmount"

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->getCustomTypeAdapters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->toJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/ISO8601DateDeserializer;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/ISO8601DateDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPointOfDistributionTypeAdapter;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPointOfDistributionTypeAdapter;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPriceTypeAdapter;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPriceTypeAdapter;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "/order/finalization/delivery"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryCheckOutResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryCheckOutResponse;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 149
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWDeliveryCheckOutResponse{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWDeliveryCheckOutRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
