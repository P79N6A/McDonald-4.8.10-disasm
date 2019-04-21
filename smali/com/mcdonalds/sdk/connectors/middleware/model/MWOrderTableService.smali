.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;
.super Ljava/lang/Object;
.source "MWOrderTableService.java"


# instance fields
.field public tableServiceId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TableServiceId"
    .end annotation
.end field

.field public tableServiceZoneId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TableServiceZoneId"
    .end annotation
.end field

.field public tableTagId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TableTagId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromOrderTableService(Lcom/mcdonalds/sdk/modules/models/OrderTableService;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;
    .locals 3
    .param p0, "orderTableService"    # Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    .prologue
    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;-><init>()V

    .line 19
    .local v0, "ret":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->getTableServiceId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->getTableServiceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;->tableServiceId:Ljava/lang/Integer;

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->getTablseServiceZoneId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->getTablseServiceZoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;->tableServiceZoneId:Ljava/lang/Integer;

    .line 29
    :goto_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->getTableTagId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderTableService;->getTableTagId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;->tableTagId:Ljava/lang/Integer;

    .line 36
    :goto_2
    return-object v0

    .line 22
    :cond_0
    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;->tableServiceId:Ljava/lang/Integer;

    goto :goto_0

    .line 27
    :cond_1
    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;->tableServiceZoneId:Ljava/lang/Integer;

    goto :goto_1

    .line 32
    :cond_2
    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderTableService;->tableTagId:Ljava/lang/Integer;

    goto :goto_2
.end method
