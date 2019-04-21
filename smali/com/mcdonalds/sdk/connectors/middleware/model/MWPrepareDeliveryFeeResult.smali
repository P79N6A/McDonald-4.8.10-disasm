.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareDeliveryFeeResult;
.super Ljava/lang/Object;
.source "MWPrepareDeliveryFeeResult.java"


# instance fields
.field private mDeliveryAmount:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Price"
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

.method public static toOrderResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareDeliveryFeeResult;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 2
    .param p0, "result"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareDeliveryFeeResult;

    .prologue
    .line 14
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;-><init>()V

    .line 15
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareDeliveryFeeResult;->getDeliveryAmount()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setDeliveryFee(Ljava/lang/Double;)V

    .line 17
    return-object v0
.end method


# virtual methods
.method public getDeliveryAmount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareDeliveryFeeResult;->mDeliveryAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public setDeliveryAmount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "mDeliveryAmount"    # Ljava/lang/Double;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareDeliveryFeeResult;->mDeliveryAmount:Ljava/lang/Double;

    .line 26
    return-void
.end method
