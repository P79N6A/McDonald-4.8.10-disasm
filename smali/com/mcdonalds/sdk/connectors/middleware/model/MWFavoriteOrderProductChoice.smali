.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWFavoriteOrderProductChoice;
.super Ljava/lang/Object;
.source "MWFavoriteOrderProductChoice.java"


# instance fields
.field public choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWFavoriteOrderProductChoiceSolution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ChoiceSolution"
    .end annotation
.end field

.field public productCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
