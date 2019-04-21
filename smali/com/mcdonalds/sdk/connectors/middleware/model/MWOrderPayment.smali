.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;
.super Ljava/lang/Object;
.source "MWOrderPayment.java"


# instance fields
.field public CVV:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CVV"
    .end annotation
.end field

.field public POD:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "POD"
    .end annotation
.end field

.field public customerPaymentMethodId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerPaymentMethodId"
    .end annotation
.end field

.field public deviceFingerPrintId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceFingerprintID"
    .end annotation
.end field

.field public ipAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IpAddress"
    .end annotation
.end field

.field public orderPaymentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderPaymentId"
    .end annotation
.end field

.field public paymentDataId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentDataId"
    .end annotation
.end field

.field public paymentMethodId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMethodId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromOrderPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;
    .locals 4
    .param p0, "orderPayment"    # Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    .prologue
    .line 31
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;-><init>()V

    .line 33
    .local v1, "ret":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPOD()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 34
    .local v0, "podInt":Ljava/lang/Integer;
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->values()[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->POD:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 35
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getCustomerPaymentMethodId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->customerPaymentMethodId:Ljava/lang/Integer;

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getOrderPaymentId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->orderPaymentId:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPaymentDataId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->paymentDataId:Ljava/lang/Integer;

    .line 38
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getPaymentMethodId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->paymentMethodId:Ljava/lang/Integer;

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getCVV()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->CVV:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->ipAddress:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->getDeviceFingerPrintId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->deviceFingerPrintId:Ljava/lang/String;

    .line 43
    return-object v1

    .line 33
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

.method public static fromOrderPayment(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderPayment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "orderPayments":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderPayment;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "mwOrderPayments":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    .line 49
    .local v1, "orderPayment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->fromOrderPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v1    # "orderPayment":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .end local v0    # "mwOrderPayments":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;>;"
    :goto_1
    return-object v0

    .restart local v0    # "mwOrderPayments":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
