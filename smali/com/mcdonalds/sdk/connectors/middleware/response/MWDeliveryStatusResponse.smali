.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryStatusResponse;
.super Ljava/lang/Object;
.source "MWDeliveryStatusResponse.java"


# static fields
.field public static final STATUS_DELIVERY_IN_PROGRESS:I = 0x12c

.field public static final STATUS_ORDER_CANCELLED:I = 0x3e8

.field public static final STATUS_ORDER_DELIVERED:I = 0x190

.field public static final STATUS_ORDER_IN_PROGRESS:I = 0xc8

.field public static final STATUS_ORDER_RECEIVED:I = 0x32


# instance fields
.field public orderNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderNumber"
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Status"
    .end annotation
.end field

.field public timestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Timestamp"
    .end annotation
.end field

.field public timestampInStoreLocalTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TimestampInStoreLocalTime"
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


# virtual methods
.method public toDeliveryStatusResponse()Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 33
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;-><init>()V

    .line 35
    .local v0, "response":Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryStatusResponse;->orderNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->setmOrderNumber(Ljava/lang/String;)V

    .line 37
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryStatusResponse;->status:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    .line 38
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->setStatus(I)V

    .line 50
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryStatusResponse;->timestamp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->setTimestamp(Ljava/util/Date;)V

    .line 51
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryStatusResponse;->timestampInStoreLocalTime:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->setTimestampInStoreLocalTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    return-object v0

    .line 39
    :cond_0
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryStatusResponse;->status:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1

    .line 40
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->setStatus(I)V

    goto :goto_0

    .line 41
    :cond_1
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryStatusResponse;->status:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_2

    .line 42
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->setStatus(I)V

    goto :goto_0

    .line 43
    :cond_2
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWDeliveryStatusResponse;->status:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    .line 44
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->setStatus(I)V

    goto :goto_0

    .line 46
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->setStatus(I)V

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    goto :goto_1
.end method
