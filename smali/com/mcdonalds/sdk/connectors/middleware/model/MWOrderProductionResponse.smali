.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;
.super Ljava/lang/Object;
.source "MWOrderProductionResponse.java"


# instance fields
.field public displayOrderNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayOrderNumber"
    .end annotation
.end field

.field public major:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Major"
    .end annotation
.end field

.field public mdsOrderNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MdsOrderNumber"
    .end annotation
.end field

.field public minor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Minor"
    .end annotation
.end field

.field public pointOfDistribution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "POD"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toOrderProductionResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;)Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;
    .locals 4
    .param p0, "ecpResponse"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;

    .prologue
    .line 23
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;-><init>()V

    .line 24
    .local v1, "response":Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;->pointOfDistribution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 25
    .local v0, "POD":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->setPointOfDistribution(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 26
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;->major:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->setMajor(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;->minor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->setMinor(Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;->displayOrderNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->setDisplayOrderNumber(Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderProductionResponse;->mdsOrderNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->setMdsOrderNumber(Ljava/lang/String;)V

    .line 31
    return-object v1

    .line 25
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->values()[Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->integerValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_0
.end method
