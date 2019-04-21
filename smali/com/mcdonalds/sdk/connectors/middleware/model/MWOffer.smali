.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOffer;
.super Ljava/lang/Object;
.source "MWOffer.java"


# instance fields
.field public archived:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Archived"
    .end annotation
.end field

.field public conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Conditions"
    .end annotation
.end field

.field public currentPunch:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CurrentPunch"
    .end annotation
.end field

.field public duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Duration"
    .end annotation
.end field

.field public expirationChanged:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExpirationChanged"
    .end annotation
.end field

.field public expired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Expired"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field public imageBaseName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ImageBaseName"
    .end annotation
.end field

.field public localValidFrom:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LocalValidFrom"
    .end annotation
.end field

.field public localValidThru:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LocalValidThru"
    .end annotation
.end field

.field public longDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LongDescription"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field public offerType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OfferType"
    .end annotation
.end field

.field public orderDiscount:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderDiscount"
    .end annotation
.end field

.field public orderDiscountType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderDiscountType"
    .end annotation
.end field

.field public productSets:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductSets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductSet;",
            ">;"
        }
    .end annotation
.end field

.field public redeemed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Redeemed"
    .end annotation
.end field

.field public redeemedAt:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RedeemedAt"
    .end annotation
.end field

.field public restaurants:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Restaurants"
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

.field public selected:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Selected"
    .end annotation
.end field

.field public shortDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShortDescription"
    .end annotation
.end field

.field public totalPunch:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalPunch"
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
