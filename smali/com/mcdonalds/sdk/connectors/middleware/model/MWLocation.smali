.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
.super Ljava/lang/Object;
.source "MWLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private locationID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LocationID"
    .end annotation
.end field

.field private paymentMethods:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMethods"
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

.field private saleTypeEatIn:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SaleTypeEatIn"
    .end annotation
.end field

.field private saleTypeOther:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SaleTypeOther"
    .end annotation
.end field

.field private saleTypeTakeOut:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SaleTypeTakeOut"
    .end annotation
.end field

.field private storeAreaOpeningHours:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreAreaOpeningHours"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationID()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->locationID:I

    return v0
.end method

.method public getPaymentMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->paymentMethods:Ljava/util/List;

    return-object v0
.end method

.method public getStoreAreaOpeningHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->storeAreaOpeningHours:Ljava/util/List;

    return-object v0
.end method
