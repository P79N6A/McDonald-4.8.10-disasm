.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryRestaurant;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
.source "MWDeliveryRestaurant.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public NPVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NPVersion"
    .end annotation
.end field

.field public TODCutoffTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TODCutoffTime"
    .end annotation
.end field

.field public dayPart:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DayPart"
    .end annotation
.end field

.field public expectedDeliveryTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExpectedDeliveryTime"
    .end annotation
.end field

.field public externalStoreNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExternalStoreNumber"
    .end annotation
.end field

.field public largeOrderAllowed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LargeOrderAllowed"
    .end annotation
.end field

.field public minimumOrderValue:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MinimumOrderValue"
    .end annotation
.end field

.field public storeCutoffTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreCutoffTime"
    .end annotation
.end field

.field public storeStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreStatus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;-><init>()V

    return-void
.end method

.method public static toDeliveryStore(Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryRestaurant;)Lcom/mcdonalds/sdk/modules/models/DeliveryStore;
    .locals 1
    .param p0, "store"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryRestaurant;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryRestaurant;->toStore(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/DeliveryStore;

    return-object v0
.end method
