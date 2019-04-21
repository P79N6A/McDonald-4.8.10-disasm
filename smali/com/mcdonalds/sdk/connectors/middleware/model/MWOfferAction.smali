.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferAction;
.super Ljava/lang/Object;
.source "MWOfferAction.java"


# instance fields
.field public discountType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DiscountType"
    .end annotation
.end field

.field public priceFromCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PriceFromCode"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field

.field public value:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Value"
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
