.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;
.super Ljava/lang/Object;
.source "MWCheckoutWorkAroundOrderPayment.java"


# instance fields
.field public POD:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "POD"
    .end annotation
.end field

.field public customerPaymentMethodId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerPaymentMethodId"
    .end annotation
.end field

.field public orderPaymentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderPaymentId"
    .end annotation
.end field

.field public paymentDataId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentDataId"
    .end annotation
.end field

.field public paymentMethodId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMethodId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromOrderPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;
    .locals 4
    .param p0, "orderPayment"    # Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    .prologue
    .line 22
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;-><init>()V

    .line 24
    .local v1, "ret":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPOD()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 25
    .local v0, "podInt":Ljava/lang/Integer;
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->values()[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;->POD:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 26
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getCustomerPaymentMethodId()I

    move-result v2

    iput v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;->customerPaymentMethodId:I

    .line 27
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getOrderPaymentId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;->orderPaymentId:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPaymentMethodId()I

    move-result v2

    iput v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;->paymentMethodId:I

    .line 29
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPaymentDataId()I

    move-result v2

    iput v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCheckoutWorkAroundOrderPayment;->paymentDataId:I

    .line 31
    return-object v1

    .line 24
    .end local v0    # "podInt":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPOD()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->integerValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method
