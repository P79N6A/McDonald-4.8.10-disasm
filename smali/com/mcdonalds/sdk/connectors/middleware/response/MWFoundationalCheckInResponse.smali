.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;
.super Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
.source "MWFoundationalCheckInResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;",
        ">;"
    }
.end annotation


# instance fields
.field public orderView:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderView"
    .end annotation
.end field

.field public paymentDataId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentDataId"
    .end annotation
.end field

.field public paymentUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentUrl"
    .end annotation
.end field

.field public requireCVV:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequireCVV"
    .end annotation
.end field

.field public requiresPassword:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequiresPassword"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;-><init>()V

    return-void
.end method

.method public static toOrderView(Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;)Lcom/mcdonalds/sdk/modules/models/OrderView;
    .locals 3
    .param p0, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;

    .prologue
    .line 26
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;->orderView:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;->orderView:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    .line 27
    .local v1, "orderViewResult":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;
    :goto_0
    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->toOrderView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;)Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v0

    .line 28
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/OrderView;
    iget-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->checkInCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setCheckInCode(Ljava/lang/String;)V

    .line 29
    iget-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->orderPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setOrderPaymentId(Ljava/lang/String;)V

    .line 30
    iget-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->restaurant:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->restaurant:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->restaurantInformation:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurantInformation;

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->restaurant:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->restaurantInformation:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurantInformation;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurantInformation;->fulfilmentFacilityOpeningHours:Ljava/util/List;

    .line 32
    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFulfillmentFacilityOpeningHour;->toFulfillmentFacilityOpeningHours(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderView;->setFacilityOpeningHours(Ljava/util/List;)V

    .line 35
    :cond_0
    return-object v0

    .line 26
    .end local v0    # "order":Lcom/mcdonalds/sdk/modules/models/OrderView;
    .end local v1    # "orderViewResult":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFoundationalCheckInResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    move-object v1, v2

    goto :goto_0
.end method
