.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWFavoriteOrderProductChoiceSolution;
.super Ljava/lang/Object;
.source "MWFavoriteOrderProductChoiceSolution.java"


# instance fields
.field public choices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Choices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWFavoriteOrderProductChoice;",
            ">;"
        }
    .end annotation
.end field

.field public components:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Components"
    .end annotation
.end field

.field public customizations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Customizations"
    .end annotation
.end field

.field public productCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
    .end annotation
.end field

.field public promoQuantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromoQuantity"
    .end annotation
.end field

.field public quantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Quantity"
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
