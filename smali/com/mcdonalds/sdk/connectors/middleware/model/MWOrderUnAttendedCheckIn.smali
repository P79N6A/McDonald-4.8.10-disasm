.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;
.super Ljava/lang/Object;
.source "MWOrderUnAttendedCheckIn.java"


# instance fields
.field public OrderChangesAccepted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderChangesAccepted"
    .end annotation
.end field

.field public additionalPayments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AdditionalPayments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field public checkInData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkInData"
    .end annotation
.end field

.field public mType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PriceType"
    .end annotation
.end field

.field public orderPayment:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderPayment"
    .end annotation
.end field

.field public storeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "POSStoreNumber"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->OrderChangesAccepted:Z

    return-void
.end method

.method public static fromUnAttendedCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;
    .locals 2
    .param p0, "orderUnAttendedCheckIn"    # Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;

    .prologue
    .line 31
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;-><init>()V

    .line 32
    .local v0, "mwOrderCheckInUnAttended":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->getStoreID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->storeId:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->getCheckInData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->checkInData:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->getPriceType()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->mType:Ljava/lang/Integer;

    .line 35
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->getOrderPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->fromOrderPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->orderPayment:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->isPriceChaged()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->OrderChangesAccepted:Z

    .line 37
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->getAdditionalPayments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;->fromOrderPayment(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->additionalPayments:Ljava/util/List;

    .line 38
    return-object v0
.end method
