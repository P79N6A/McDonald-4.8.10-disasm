.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;
.super Ljava/lang/Object;
.source "MWAdvertisableProductSet.java"


# instance fields
.field public action:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Action"
    .end annotation
.end field

.field public alias:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Alias"
    .end annotation
.end field

.field public anyProduct:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AnyProduct"
    .end annotation
.end field

.field public maxUnitPrice:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MaxUnitPrice"
    .end annotation
.end field

.field public maxUnitPriceAlias:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MaxUnitPriceAlias"
    .end annotation
.end field

.field public minUnitPrice:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MinUnitPrice"
    .end annotation
.end field

.field public minUnitPriceAlias:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MinUnitPriceAlias"
    .end annotation
.end field

.field public products:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Products"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public promoItem:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromoItem"
    .end annotation
.end field

.field public quantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Quantity"
    .end annotation
.end field

.field public swapMapping:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SwapMapping"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableSwapMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
