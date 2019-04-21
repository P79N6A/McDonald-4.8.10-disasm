.class Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant$MWAutoBagSaleInformation;
.super Ljava/lang/Object;
.source "MWRestaurant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MWAutoBagSaleInformation"
.end annotation


# instance fields
.field bagProductCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BagProductCode"
    .end annotation
.end field

.field enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Enabled"
    .end annotation
.end field

.field noBagProductCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NoBagProductCode"
    .end annotation
.end field
