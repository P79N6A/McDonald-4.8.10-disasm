.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;
.super Ljava/lang/Object;
.source "MWTenderType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public defaultTenderAmountDisplay:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DefaultTenderAmountDisplay"
    .end annotation
.end field

.field public isDefault:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsDefault"
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public lastModification:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LastModification"
    .end annotation
.end field

.field public marketID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MarketID"
    .end annotation
.end field

.field public minimumTenderAmount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MinimumTenderAmount"
    .end annotation
.end field

.field public staticsData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StaticsData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public tenderTypeCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenderTypeCode"
    .end annotation
.end field

.field public tenderTypeDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenderTypeDisplayName"
    .end annotation
.end field

.field public tenderTypeId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TenderTypeId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toTenderType()Lcom/mcdonalds/sdk/modules/models/TenderType;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/TenderType;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/TenderType;-><init>()V

    .line 39
    .local v0, "tenderType":Lcom/mcdonalds/sdk/modules/models/TenderType;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->tenderTypeId:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/TenderType;->setID(I)V

    .line 40
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->tenderTypeCode:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/TenderType;->setCode(I)V

    .line 41
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->tenderTypeDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/TenderType;->setDisplayName(Ljava/lang/String;)V

    .line 42
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->marketID:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/TenderType;->setMarketID(I)V

    .line 43
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->minimumTenderAmount:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/TenderType;->setMinimumTenderAmount(I)V

    .line 44
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->defaultTenderAmountDisplay:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/TenderType;->setDefaultTenderAmountDisplay(I)V

    .line 45
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->isDefault:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/TenderType;->setDefault(Z)V

    .line 46
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->lastModification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/TenderType;->setLastModification(Ljava/lang/String;)V

    .line 47
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->isValid:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/TenderType;->setValid(Z)V

    .line 48
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTenderType;->staticsData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/TenderType;->setStaticsData(Ljava/util/List;)V

    .line 50
    return-object v0
.end method
